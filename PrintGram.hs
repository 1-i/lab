{-# OPTIONS_GHC -fno-warn-incomplete-patterns #-}
module PrintGram where

-- pretty-printer generated by the BNF converter

import AbsGram
import Data.Char


-- the top-level printing method
printTree :: Print a => a -> String
printTree = render . prt 0

type Doc = [ShowS] -> [ShowS]

doc :: ShowS -> Doc
doc = (:)

render :: Doc -> String
render d = rend 0 (map ($ "") $ d []) "" where
  rend i ss = case ss of
    "["      :ts -> showChar '[' . rend i ts
    "("      :ts -> showChar '(' . rend i ts
    "{"      :ts -> showChar '{' . new (i+1) . rend (i+1) ts
    "}" : ";":ts -> new (i-1) . space "}" . showChar ';' . new (i-1) . rend (i-1) ts
    "}"      :ts -> new (i-1) . showChar '}' . new (i-1) . rend (i-1) ts
    ";"      :ts -> showChar ';' . new i . rend i ts
    t  : "," :ts -> showString t . space "," . rend i ts
    t  : ")" :ts -> showString t . showChar ')' . rend i ts
    t  : "]" :ts -> showString t . showChar ']' . rend i ts
    t        :ts -> space t . rend i ts
    _            -> id
  new i   = showChar '\n' . replicateS (2*i) (showChar ' ') . dropWhile isSpace
  space t = showString t . (\s -> if null s then "" else (' ':s))

parenth :: Doc -> Doc
parenth ss = doc (showChar '(') . ss . doc (showChar ')')

concatS :: [ShowS] -> ShowS
concatS = foldr (.) id

concatD :: [Doc] -> Doc
concatD = foldr (.) id

replicateS :: Int -> ShowS -> ShowS
replicateS n f = concatS (replicate n f)

-- the printer class does the job
class Print a where
  prt :: Int -> a -> Doc
  prtList :: Int -> [a] -> Doc
  prtList i = concatD . map (prt i)

instance Print a => Print [a] where
  prt = prtList

instance Print Char where
  prt _ s = doc (showChar '\'' . mkEsc '\'' s . showChar '\'')
  prtList _ s = doc (showChar '"' . concatS (map (mkEsc '"') s) . showChar '"')

mkEsc :: Char -> Char -> ShowS
mkEsc q s = case s of
  _ | s == q -> showChar '\\' . showChar s
  '\\'-> showString "\\\\"
  '\n' -> showString "\\n"
  '\t' -> showString "\\t"
  _ -> showChar s

prPrec :: Int -> Int -> Doc -> Doc
prPrec i j = if j<i then parenth else id


instance Print Integer where
  prt _ x = doc (shows x)


instance Print Double where
  prt _ x = doc (shows x)


instance Print Ident where
  prt _ (Ident i) = doc (showString ( i))



instance Print Program where
  prt i e = case e of
    Prog stms -> prPrec i 0 (concatD [prt 0 stms])

instance Print Function where
  prt i e = case e of
    Fun id pdecls type_ stms -> prPrec i 0 (concatD [doc (showString "$"), prt 0 id, doc (showString "("), prt 0 pdecls, doc (showString ")"), doc (showString ":"), prt 0 type_, doc (showString "do"), prt 0 stms, doc (showString "end")])
  prtList _ [] = (concatD [])
  prtList _ (x:xs) = (concatD [prt 0 x, prt 0 xs])
instance Print Decl where
  prt i e = case e of
    Dec id type_ -> prPrec i 0 (concatD [prt 0 id, doc (showString ":"), prt 0 type_])
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ";"), prt 0 xs])
instance Print PDecl where
  prt i e = case e of
    PDec pmet type_ -> prPrec i 0 (concatD [prt 0 pmet, doc (showString ":"), prt 0 type_])
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ";"), prt 0 xs])
instance Print Stm where
  prt i e = case e of
    SNop -> prPrec i 0 (concatD [doc (showString ";")])
    SDecl decl -> prPrec i 0 (concatD [prt 0 decl, doc (showString ";")])
    SExp exp -> prPrec i 0 (concatD [prt 0 exp, doc (showString ";")])
    SBlock stms -> prPrec i 0 (concatD [doc (showString "do"), prt 0 stms, doc (showString "end")])
    SWhile exp stms -> prPrec i 0 (concatD [doc (showString "until"), prt 0 exp, doc (showString "loop"), prt 0 stms, doc (showString "end")])
    SWhileA ass exp stms -> prPrec i 0 (concatD [doc (showString "from"), prt 0 ass, doc (showString "until"), prt 0 exp, doc (showString "loop"), prt 0 stms, doc (showString "end")])
    SReturn exp -> prPrec i 0 (concatD [doc (showString "return"), prt 0 exp, doc (showString ";")])
    SFunc function -> prPrec i 0 (concatD [prt 0 function])
    SAss ass -> prPrec i 0 (concatD [prt 0 ass])
    SCond exp stms -> prPrec i 0 (concatD [doc (showString "if"), prt 0 exp, doc (showString "then"), prt 0 stms, doc (showString "end")])
    SCondEl exp stms1 stms2 -> prPrec i 0 (concatD [doc (showString "if"), prt 0 exp, doc (showString "then"), prt 0 stms1, doc (showString "else"), prt 0 stms2, doc (showString "end")])
    SWInt exp -> prPrec i 0 (concatD [doc (showString "writeInt"), doc (showString "("), prt 0 exp, doc (showString ")"), doc (showString ";")])
    SRInt -> prPrec i 0 (concatD [doc (showString "readInt()"), doc (showString ";")])
    SWDou exp -> prPrec i 0 (concatD [doc (showString "writeDouble"), doc (showString "("), prt 0 exp, doc (showString ")"), doc (showString ";")])
    SRDou -> prPrec i 0 (concatD [doc (showString "readDouble()"), doc (showString ";")])
    SWStr exp -> prPrec i 0 (concatD [doc (showString "writeString"), doc (showString "("), prt 0 exp, doc (showString ")"), doc (showString ";")])
    SRStr -> prPrec i 0 (concatD [doc (showString "readString()"), doc (showString ";")])
  prtList _ [] = (concatD [])
  prtList _ (x:xs) = (concatD [prt 0 x, prt 0 xs])
instance Print Ass where
  prt i e = case e of
    DAss exp1 exp2 -> prPrec i 0 (concatD [prt 11 exp1, doc (showString ":="), prt 0 exp2, doc (showString ";")])

instance Print Exp where
  prt i e = case e of
    EOr exp1 exp2 -> prPrec i 2 (concatD [prt 2 exp1, doc (showString "or"), prt 3 exp2])
    EAnd exp1 exp2 -> prPrec i 3 (concatD [prt 3 exp1, doc (showString "and"), prt 4 exp2])
    EEql exp1 exp2 -> prPrec i 4 (concatD [prt 4 exp1, doc (showString "=="), prt 5 exp2])
    ELt exp1 exp2 -> prPrec i 5 (concatD [prt 5 exp1, doc (showString "<"), prt 6 exp2])
    EGt exp1 exp2 -> prPrec i 5 (concatD [prt 5 exp1, doc (showString ">"), prt 6 exp2])
    EAdd exp1 exp2 -> prPrec i 6 (concatD [prt 6 exp1, doc (showString "+"), prt 7 exp2])
    ESub exp1 exp2 -> prPrec i 6 (concatD [prt 6 exp1, doc (showString "-"), prt 7 exp2])
    EMul exp1 exp2 -> prPrec i 7 (concatD [prt 7 exp1, doc (showString "*"), prt 8 exp2])
    EDiv exp1 exp2 -> prPrec i 7 (concatD [prt 7 exp1, doc (showString "/"), prt 8 exp2])
    ENot exp -> prPrec i 9 (concatD [doc (showString "!"), prt 8 exp])
    EDeref exp -> prPrec i 11 (concatD [doc (showString "*"), prt 11 exp])
    ERefer exp -> prPrec i 11 (concatD [doc (showString "&"), prt 11 exp])
    EArr exp1 exp2 -> prPrec i 12 (concatD [prt 12 exp1, doc (showString "["), prt 0 exp2, doc (showString "]")])
    ECall id exps -> prPrec i 13 (concatD [prt 0 id, doc (showString "("), prt 0 exps, doc (showString ")")])
    EVar id -> prPrec i 13 (concatD [prt 0 id])
    EStr str -> prPrec i 13 (concatD [prt 0 str])
    EInt n -> prPrec i 13 (concatD [prt 0 n])
    EChar c -> prPrec i 13 (concatD [prt 0 c])
    EDouble d -> prPrec i 13 (concatD [prt 0 d])
    ETrue -> prPrec i 13 (concatD [doc (showString "true")])
    EFalse -> prPrec i 13 (concatD [doc (showString "false")])
    EParen exp -> prPrec i 14 (concatD [doc (showString "("), prt 0 exp, doc (showString ")")])
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])
instance Print Type where
  prt i e = case e of
    TInt -> prPrec i 0 (concatD [doc (showString "int")])
    TDouble -> prPrec i 0 (concatD [doc (showString "double")])
    TBool -> prPrec i 0 (concatD [doc (showString "bool")])
    TStr -> prPrec i 0 (concatD [doc (showString "string")])
    TChar -> prPrec i 0 (concatD [doc (showString "char")])
    TPtr type_ -> prPrec i 0 (concatD [doc (showString "*"), prt 0 type_])
    TArray type_ -> prPrec i 0 (concatD [doc (showString "array"), doc (showString "["), prt 0 type_, doc (showString "]")])
    TMem type_ -> prPrec i 0 (concatD [doc (showString "&"), prt 0 type_])

instance Print PMet where
  prt i e = case e of
    PVal id -> prPrec i 0 (concatD [doc (showString "value"), prt 0 id])
    PValres id -> prPrec i 0 (concatD [doc (showString "valres"), prt 0 id])
    PName id -> prPrec i 0 (concatD [doc (showString "name"), prt 0 id])
    PRef id -> prPrec i 0 (concatD [doc (showString "ref"), prt 0 id])
    PImpl id -> prPrec i 0 (concatD [prt 0 id])


