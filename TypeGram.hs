module TypeGram where

-- Haskell module generated by the BNF converter

import AbsGram
import ErrM
import Data.Map
import Control.Monad
import TravGram

type Env = [Context]
type Sig = ([Type], Type)
data TypeJudg = VarTypeJudg Type | FunTypeJudg Sig
type Context = Map Ident TypeJudg

lookupVar :: Env -> Ident -> Err (Maybe Type)
lookupVar env x = do
	case env of
		[] -> return Nothing
		en:ens -> do
			u <- Ok (Data.Map.lookup x en)
			case u of
				Just (VarTypeJudg t) -> return (Just t)
				Just (FunTypeJudg sig) -> fail $ "identifier: " ++ 
					transIdent x ++
					" that is expected to be a variable is" ++
					" actually a function\n"
				Nothing -> lookupVar ens x

lookupFun :: Env -> Ident -> Err (Maybe ([Type], Type))
lookupFun env x = do
	case env of
		[] -> return Nothing
		en:ens -> do
			u <- Ok (Data.Map.lookup x en)
			case u of
				Just (VarTypeJudg t) -> fail $ "identifier: "  ++ 
					transIdent x ++
					" that is expected to be a function is " ++
					"actually a variable\n"
				Just (FunTypeJudg sig) -> return (Just sig) 
				Nothing -> lookupFun ens x

updateVar :: Env -> Ident -> Type -> Err Env
updateVar env id typ = case env of
	[] -> Ok ((insert id (VarTypeJudg typ) empty):[])
	env:envs -> do
		u <- Ok (Data.Map.lookup id env)
		case u of
			Nothing -> return ((insert id (VarTypeJudg typ) env):envs)
			Just _ -> fail $ "identifier: " ++ transIdent id ++
				" is already defined in current context\n"

updateFun :: Env -> Ident -> ([Type], Type) -> Err Env
updateFun env id sig = case env of
	[] -> Ok ((insert id (FunTypeJudg sig) empty):[])
	env:envs ->  do
		u <- Ok (Data.Map.lookup id env)
		case u of
			Nothing -> Ok ((insert id (FunTypeJudg sig) env):envs)
			Just _ -> Bad $ "identifier: " ++ transIdent id ++
				" is already defined in current context\n"

newBlock :: Env -> Env
newBlock env = empty:env

emptyEnv :: Env
emptyEnv = [empty]

isAssignable :: Exp -> Bool
isAssignable e = case e of
	EArr _ _ -> True
	EVar _ -> True
	EDeref _ -> True
	EParen exp -> isAssignable exp
	_ -> False

inferExp :: Env -> Exp -> Err Type
inferExp env x = case x of
	EInt _ -> return TInt
	EDouble _ -> return TDouble
	EStr _ -> return TStr 
	EChar _ -> return TChar
	ETrue -> return TBool
	EFalse -> return TBool

	EVar id -> do
		u <- lookupVar env id
		case u of
			Just m -> return m
			Nothing -> fail $ "undeclared identifier: "
				++ transIdent id ++ "\n"

	EArr exp sub -> do
		checkExp env TInt sub
		t <- inferExp env exp
		case t of
			TArray typ -> return typ
			_ -> fail $ "expression: " ++ transExp exp ++
				" is not an array\n"
	
	EEql exp1 exp2 ->
		inferOrd env exp1 exp2 "=="	

	ELt exp1 exp2 ->
		inferOrd env exp1 exp2 "<"	

	EGt exp1 exp2 ->
		inferOrd env exp1 exp2 ">"	

	EAdd exp1 exp2 ->
		inferBin [TInt, TStr, TDouble] env exp1 exp2 "+"

	ESub exp1 exp2 ->
		inferBin [TInt, TStr, TDouble] env exp1 exp2 "-"

	EMul exp1 exp2 ->
		inferBin [TInt, TDouble] env exp1 exp2 "*"

	EDiv exp1 exp2 ->
		inferBin [TInt, TDouble] env exp1 exp2 "/"

	ENot exp -> 
		checkExp env TBool exp

	EDeref exp -> do 
		u <- inferExp env exp
		case u of
			TPtr u -> Ok u
			_ -> fail $ "expression " ++ transExp exp ++ 
				" cannot be dereferenced because is not a pointer"

	ERefer exp -> do
		u <- inferExp env exp
		Ok (TPtr u)

	EParen exp -> do
		inferExp env exp


inferBin :: [Type] -> Env -> Exp -> Exp -> String -> Err Type
inferBin types env exp1 exp2 opName = do
	typ <- inferExp env exp1
	if elem typ types
		then
			checkExp env typ exp2
		else
			fail $ "expression " ++ transExp exp1 ++
				"cannot be an argument of binary operator: " ++ opName
				++ "\n"

inferOrd :: Env -> Exp -> Exp -> String -> Err Type
inferOrd env exp1 exp2 opName = do
	typ1 <- inferExp env exp1
	typ2 <- inferExp env exp2
	case typ1 of
		TPtr _ ->
			case typ2 of
				TPtr _ -> return TBool
				_ -> fail $ "comparison " ++ opName ++
					" between incompatible expressions " ++
					transExp exp1 ++ " and " ++ transExp exp2 ++ "\n"
		_ ->
			if (typ1 == typ2) then return TBool else
				fail  $ "comparison " ++ opName ++
				" between incompatible expressions " ++
				transExp exp1 ++ " and " ++ transExp exp2 ++ "\n"
			
				

checkExp :: Env -> Type -> Exp -> Err Type 
checkExp env typ exp = do
	typ2 <- inferExp env exp

	if (typ2 == typ) then return typ 
		else
			fail $ "cannot match expected type: " 
				++ transType typ ++ " of expression: " 
				++ transExp exp ++ " with actual type: " 
				++ transType typ2


checkAss :: Env -> Ass -> Err Env
checkAss env (DAss lexp rexp) =
	if (isAssignable lexp) then do
		ltype <- inferExp env lexp
		checkExp env ltype rexp
		return env
		else
			Bad $ "expression: " ++ transExp lexp ++ 
			" is not assignable\n" 	
	

checkStm :: Env -> Stm -> Err Env
checkStm env x = case x of

		SNop -> do
			return env

		SExp exp -> do
			inferExp env exp
			return env

		SBlock stms -> do
			checkStmLst (newBlock env) stms
			return env

		SDecl (Dec id typ) ->
			updateVar env id typ

		SAss ass -> do
			checkAss env ass 

		SWhile ass exp stms -> do
			checkAss env ass
			checkExp env TBool exp
			checkStmLst env stms
			return env

		SCond exp stms -> do
			checkExp env TBool exp
			checkStmLst env stms
			return env

		SCondEl exp stmt stmf -> do
			checkExp env TBool exp
			checkStmLst env stmt
			checkStmLst env stmf
			return env

		SWInt exp -> do
			checkExp env TInt exp
			return env

		SRInt -> do
			return env

		SWDou exp -> do
			checkExp env TDouble exp
			return env

		SRDou -> do
			return env

		SWStr exp -> do
			checkExp env TStr exp
			return env

		SRStr -> do
			return env

checkStmLst :: Env -> [Stm] -> Err Env
checkStmLst env stms = case stms of
	[] -> return env
	x:xs -> do
		new_env <- checkStm env x 
		checkStmLst new_env xs

checkPrg :: Program -> Err Env 
checkPrg (Prog stms) = checkStmLst emptyEnv stms
