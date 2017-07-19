-- This Happy file was machine-generated by the BNF converter
{
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParGram where
import AbsGram
import LexGram
import ErrM

}

%name pProgram Program
%name pFunction Function
%name pDecl Decl
%name pPDecl PDecl
%name pListFunction ListFunction
%name pListStm ListStm
%name pListDecl ListDecl
%name pListPDecl ListPDecl
%name pListExp ListExp
%name pStm Stm
%name pAss Ass
%name pExp2 Exp2
%name pExp3 Exp3
%name pExp4 Exp4
%name pExp5 Exp5
%name pExp6 Exp6
%name pExp7 Exp7
%name pExp9 Exp9
%name pExp11 Exp11
%name pExp12 Exp12
%name pExp13 Exp13
%name pExp Exp
%name pExp1 Exp1
%name pExp8 Exp8
%name pExp10 Exp10
%name pExp14 Exp14
%name pType Type
%name pPMet PMet
-- no lexer declaration
%monad { Err } { thenM } { returnM }
%tokentype {Token}
%token
  '!' { PT _ (TS _ 1) }
  '$' { PT _ (TS _ 2) }
  '&' { PT _ (TS _ 3) }
  '(' { PT _ (TS _ 4) }
  ')' { PT _ (TS _ 5) }
  '*' { PT _ (TS _ 6) }
  '+' { PT _ (TS _ 7) }
  ',' { PT _ (TS _ 8) }
  '-' { PT _ (TS _ 9) }
  '/' { PT _ (TS _ 10) }
  ':' { PT _ (TS _ 11) }
  ':=' { PT _ (TS _ 12) }
  ';' { PT _ (TS _ 13) }
  '<' { PT _ (TS _ 14) }
  '==' { PT _ (TS _ 15) }
  '>' { PT _ (TS _ 16) }
  '[' { PT _ (TS _ 17) }
  ']' { PT _ (TS _ 18) }
  'and' { PT _ (TS _ 19) }
  'array' { PT _ (TS _ 20) }
  'bool' { PT _ (TS _ 21) }
  'char' { PT _ (TS _ 22) }
  'do' { PT _ (TS _ 23) }
  'double' { PT _ (TS _ 24) }
  'else' { PT _ (TS _ 25) }
  'end' { PT _ (TS _ 26) }
  'false' { PT _ (TS _ 27) }
  'from' { PT _ (TS _ 28) }
  'if' { PT _ (TS _ 29) }
  'int' { PT _ (TS _ 30) }
  'loop' { PT _ (TS _ 31) }
  'name' { PT _ (TS _ 32) }
  'or' { PT _ (TS _ 33) }
  'readDouble()' { PT _ (TS _ 34) }
  'readInt()' { PT _ (TS _ 35) }
  'readString()' { PT _ (TS _ 36) }
  'ref' { PT _ (TS _ 37) }
  'return' { PT _ (TS _ 38) }
  'string' { PT _ (TS _ 39) }
  'then' { PT _ (TS _ 40) }
  'true' { PT _ (TS _ 41) }
  'until' { PT _ (TS _ 42) }
  'valres' { PT _ (TS _ 43) }
  'value' { PT _ (TS _ 44) }
  'writeDouble' { PT _ (TS _ 45) }
  'writeInt' { PT _ (TS _ 46) }
  'writeString' { PT _ (TS _ 47) }

L_ident  { PT _ (TV $$) }
L_quoted { PT _ (TL $$) }
L_integ  { PT _ (TI $$) }
L_charac { PT _ (TC $$) }
L_doubl  { PT _ (TD $$) }


%%

Ident   :: { Ident }   : L_ident  { Ident $1 }
String  :: { String }  : L_quoted {  $1 }
Integer :: { Integer } : L_integ  { (read ( $1)) :: Integer }
Char    :: { Char }    : L_charac { (read ( $1)) :: Char }
Double  :: { Double }  : L_doubl  { (read ( $1)) :: Double }

Program :: { Program }
Program : ListStm { AbsGram.Prog (reverse $1) }
Function :: { Function }
Function : '$' Ident '(' ListPDecl ')' ':' Type 'do' ListStm 'end' { AbsGram.Fun $2 $4 $7 (reverse $9) }
Decl :: { Decl }
Decl : Ident ':' Type { AbsGram.Dec $1 $3 }
PDecl :: { PDecl }
PDecl : PMet ':' Type { AbsGram.PDec $1 $3 }
ListFunction :: { [Function] }
ListFunction : {- empty -} { [] }
             | ListFunction Function { flip (:) $1 $2 }
ListStm :: { [Stm] }
ListStm : {- empty -} { [] } | ListStm Stm { flip (:) $1 $2 }
ListDecl :: { [Decl] }
ListDecl : {- empty -} { [] }
         | Decl { (:[]) $1 }
         | Decl ';' ListDecl { (:) $1 $3 }
ListPDecl :: { [PDecl] }
ListPDecl : {- empty -} { [] }
          | PDecl { (:[]) $1 }
          | PDecl ';' ListPDecl { (:) $1 $3 }
ListExp :: { [Exp] }
ListExp : {- empty -} { [] }
        | Exp { (:[]) $1 }
        | Exp ',' ListExp { (:) $1 $3 }
Stm :: { Stm }
Stm : ';' { AbsGram.SNop }
    | Decl ';' { AbsGram.SDecl $1 }
    | Exp ';' { AbsGram.SExp $1 }
    | 'do' ListStm 'end' { AbsGram.SBlock (reverse $2) }
    | 'until' Exp 'loop' ListStm 'end' { AbsGram.SWhile $2 (reverse $4) }
    | 'from' Ass 'until' Exp 'loop' ListStm 'end' { AbsGram.SWhileA $2 $4 (reverse $6) }
    | 'return' Exp ';' { AbsGram.SReturn $2 }
    | Function { AbsGram.SFunc $1 }
    | Ass { AbsGram.SAss $1 }
    | 'if' Exp 'then' ListStm 'end' { AbsGram.SCond $2 (reverse $4) }
    | 'if' Exp 'then' ListStm 'else' ListStm 'end' { AbsGram.SCondEl $2 (reverse $4) (reverse $6) }
    | 'writeInt' '(' Exp ')' ';' { AbsGram.SWInt $3 }
    | 'readInt()' ';' { AbsGram.SRInt }
    | 'writeDouble' '(' Exp ')' ';' { AbsGram.SWDou $3 }
    | 'readDouble()' ';' { AbsGram.SRDou }
    | 'writeString' '(' Exp ')' ';' { AbsGram.SWStr $3 }
    | 'readString()' ';' { AbsGram.SRStr }
Ass :: { Ass }
Ass : Exp12 ':=' Exp ';' { AbsGram.DAss $1 $3 }
Exp2 :: { Exp }
Exp2 : Exp2 'or' Exp3 { AbsGram.EOr $1 $3 } | Exp3 { $1 }
Exp3 :: { Exp }
Exp3 : Exp3 'and' Exp4 { AbsGram.EAnd $1 $3 } | Exp4 { $1 }
Exp4 :: { Exp }
Exp4 : Exp4 '==' Exp5 { AbsGram.EEql $1 $3 } | Exp5 { $1 }
Exp5 :: { Exp }
Exp5 : Exp5 '<' Exp6 { AbsGram.ELt $1 $3 }
     | Exp5 '>' Exp6 { AbsGram.EGt $1 $3 }
     | Exp6 { $1 }
Exp6 :: { Exp }
Exp6 : Exp6 '+' Exp7 { AbsGram.EAdd $1 $3 }
     | Exp6 '-' Exp7 { AbsGram.ESub $1 $3 }
     | Exp7 { $1 }
Exp7 :: { Exp }
Exp7 : Exp7 '*' Exp8 { AbsGram.EMul $1 $3 }
     | Exp7 '/' Exp8 { AbsGram.EDiv $1 $3 }
     | Exp8 { $1 }
Exp9 :: { Exp }
Exp9 : '!' Exp8 { AbsGram.ENot $2 } | Exp10 { $1 }
Exp11 :: { Exp }
Exp11 : '*' Exp11 { AbsGram.EDeref $2 }
      | '&' Exp11 { AbsGram.ERefer $2 }
      | Exp12 { $1 }
Exp12 :: { Exp }
Exp12 : Exp12 '[' Exp ']' { AbsGram.EArr $1 $3 } | Exp13 { $1 }
Exp13 :: { Exp }
Exp13 : Ident '(' ListExp ')' { AbsGram.ECall $1 $3 }
      | Ident { AbsGram.EVar $1 }
      | String { AbsGram.EStr $1 }
      | Integer { AbsGram.EInt $1 }
      | Char { AbsGram.EChar $1 }
      | Double { AbsGram.EDouble $1 }
      | 'true' { AbsGram.ETrue }
      | 'false' { AbsGram.EFalse }
      | Exp14 { $1 }
Exp :: { Exp }
Exp : Exp1 { $1 }
Exp1 :: { Exp }
Exp1 : Exp2 { $1 }
Exp8 :: { Exp }
Exp8 : Exp9 { $1 }
Exp10 :: { Exp }
Exp10 : Exp11 { $1 }
Exp14 :: { Exp }
Exp14 : '(' Exp ')' { $2 }
Type :: { Type }
Type : 'int' { AbsGram.TInt }
     | 'double' { AbsGram.TDouble }
     | 'bool' { AbsGram.TBool }
     | 'string' { AbsGram.TStr }
     | 'char' { AbsGram.TChar }
     | '*' Type { AbsGram.TPtr $2 }
     | 'array' '[' Type ']' { AbsGram.TArray $3 }
PMet :: { PMet }
PMet : 'value' Ident { AbsGram.PVal $2 }
     | 'valres' Ident { AbsGram.PValres $2 }
     | 'name' Ident { AbsGram.PName $2 }
     | 'ref' Ident { AbsGram.PRef $2 }
     | Ident { AbsGram.PImpl $1 }
{

returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
}

