module TravGram where

-- Haskell module generated by the BNF converter

import AbsGram
import ErrM

failure :: Show a => a -> String
failure x = "Undefined case: " ++ show x

indent :: Int -> String
indent n = replicate (4*n) ' '

renderIf :: Exp -> [Stm] -> Int -> String
renderIf exp stms n =
	indent n ++ "if " ++ transExp exp ++ "\n" ++
	indent n ++ "then\n" ++
		(concat $ map (\u -> transStm u (n+1)) stms) ++
	indent n ++ "end\n"

renderIfElse :: Exp -> [Stm] -> [Stm] -> Int -> String
renderIfElse exp stmt stmf n =
	indent n ++ "if " ++ transExp exp ++ "\n" ++
	indent n ++ "then\n" ++
		(concat $ map (\u -> transStm u (n+1)) stmt) ++
	indent n ++ "else\n" ++
		(concat $ map (\u -> transStm u (n+1)) stmf) ++
	indent n ++ "end\n"
	
transIdent :: Ident -> String
transIdent x = case x of
  Ident string -> string 

transProgram :: Program -> String
transProgram x = case x of
  Prog stms -> concat $ map (\u -> transStm u 0) stms

transFunction :: Function -> Int -> String
transFunction x n = case x of
  Fun ident pdecls type_ stms ->
	indent n ++ "$" ++ transIdent ident ++ "("
	++ (init $ concat $ (map (++ ";") $ map transPDecl pdecls)) 
					++ ") :" ++ transType type_ ++ "\n" ++
	indent (n+1) ++ "do\n" ++
	(concat $ map (\u -> transStm u (n+2)) stms)  ++
	indent (n+1) ++ "end\n"

transDecl :: Decl -> String
transDecl x = case x of
  Dec ident type_ -> transIdent ident ++ ":" ++ transType type_

transPDecl :: PDecl -> String
transPDecl x = case x of
  PDec pmet type_ -> transPMet pmet ++ ":" ++ transType type_

transStm :: Stm -> Int -> String
transStm x n = case x of
  SNop -> indent n ++ ";"
  SDecl decl -> indent n ++ transDecl decl ++ ";\n" 
  SExp exp -> indent n ++ transExp exp ++ ";\n"
  SBlock stms -> indent n ++ "do\n" ++ 
		(concat $ map (\u -> transStm u (n+1)) stms) 
		++ indent n ++ "end\n"
  SWhile ass exp stms ->
	indent n ++ "from\n" ++
		indent (n+1) ++	transAss ass ++ "\n" ++
	indent n ++ "until\n" ++
		indent (n+1) ++ transExp exp ++ "\n" ++
	indent n ++ "loop\n" ++
		(concat $ map (\u -> transStm u (n+1)) stms) ++ "\n" ++ 
	indent n ++ "end\n"
  SReturn exp -> indent n ++ "return " ++ transExp exp ++ ";\n"
  SFunc function -> transFunction function n
  SAss ass -> indent n ++ transAss ass ++ ";\n"
  SCond exp stms -> renderIf exp stms n 
  SCondEl exp stms1 stms2 -> renderIfElse exp stms1 stms2 n
  SWInt exp ->
	indent n ++ "writeInt(" ++ transExp exp ++ ");\n"
  SRInt ->
	indent n ++ "readInt();\n"
  SWDou exp ->
	indent n ++ "writeDouble(" ++ transExp exp ++ ");\n"
  SRDou ->
	indent n ++ "readDouble();\n" 
  SWStr exp ->
	indent n ++ "writeString(" ++ transExp exp ++ ");\n"
  SRStr ->
	indent n ++ "readString();\n"

transAss :: Ass -> String 
transAss x = case x of
	DAss exp1 exp2 -> transExp exp1 ++ ":=" ++ transExp exp2

transExp :: Exp -> String
transExp x = case x of
  EOr exp1 exp2 -> "(" ++ transExp exp1 ++ "or" ++ transExp exp2 ++ ")"
  EAnd exp1 exp2 -> "(" ++ transExp exp1 ++ "and" ++ transExp exp2 ++ ")"
  EEql exp1 exp2 -> "(" ++ transExp exp1 ++ "==" ++ transExp exp2 ++ ")"
  ELt exp1 exp2 -> "(" ++ transExp exp1 ++ "<" ++ transExp exp2 ++ ")"
  EGt exp1 exp2 -> "(" ++ transExp exp1 ++ ">" ++ transExp exp2 ++ ")"
  EAdd exp1 exp2 -> "(" ++ transExp exp1 ++ "+" ++ transExp exp2 ++ ")"
  ESub exp1 exp2 -> "(" ++ transExp exp1 ++ "-" ++ transExp exp2 ++ ")" 
  EMul exp1 exp2 -> "(" ++ transExp exp1 ++ "*" ++ transExp exp2 ++ ")"
  EDiv exp1 exp2 -> "(" ++ transExp exp1 ++ "/" ++ transExp exp2 ++ ")" 
  ENot exp -> "(!" ++ transExp exp ++ ")"
  ECall ident exps -> transIdent ident ++ "("
					++ (init $ concat $ map (++ ",") $ map transExp exps) 
					++ ")"
  EDeref exp -> "*(" ++ transExp exp ++ ")"
  ERefer exp -> "&(" ++ transExp exp ++ ")"
  EArr exp1 exp2 -> "(" ++ transExp exp1 ++ "[" ++ transExp exp2 ++ "]" 
  EVar ident -> transIdent ident
  EStr string -> string 
  EInt integer -> show integer 
  EDouble double -> show double 
  EChar char -> show char
  ETrue -> "true"
  EFalse -> "false"
  EParen exp -> "(" ++ transExp exp ++ ")" 

transType :: Type -> String
transType x = case x of
  TInt -> "int" 
  TDouble -> "double" 
  TBool -> "bool"
  TStr -> "string"
  TChar -> "char"
  TArray type_ -> "array[" ++ transType type_ ++ "]"
  TPtr type_ -> "*" ++ transType type_ 

transPMet :: PMet -> String
transPMet x = case x of
  PVal ident -> "value" ++ transIdent ident 
  PValres ident -> "valres" ++ transIdent ident 
  PName ident -> "name" ++ transIdent ident 
  PRef ident -> "ref" ++ transIdent ident 
  PImpl ident -> transIdent ident 

