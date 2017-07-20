

module AbsGram where

-- Haskell module generated by the BNF converter




newtype Ident = Ident String deriving (Eq, Ord, Show, Read)
data Program = Prog [Stm]
  deriving (Eq, Ord, Show, Read)

data Function = Fun Ident [PDecl] Type [Stm]
  deriving (Eq, Ord, Show, Read)

data Decl = Dec Ident Type
  deriving (Eq, Ord, Show, Read)

data PDecl = PDec PMet Type
  deriving (Eq, Ord, Show, Read)

data Stm
    = SNop
    | SDecl Decl
    | SExp Exp
    | SBlock [Stm]
    | SWhile Exp [Stm]
    | SWhileA Ass Exp [Stm]
    | SReturn Exp
    | SFunc Function
    | SAss Ass
    | SCond Exp [Stm]
    | SCondEl Exp [Stm] [Stm]
    | SWInt Exp
    | SWDou Exp
    | SWStr Exp
  deriving (Eq, Ord, Show, Read)

data Ass = DAss Exp Exp
  deriving (Eq, Ord, Show, Read)

data Exp
    = EOr Exp Exp
    | EAnd Exp Exp
    | EEql Exp Exp
    | ELt Exp Exp
    | EGt Exp Exp
    | EAdd Exp Exp
    | ESub Exp Exp
    | EMul Exp Exp
    | EDiv Exp Exp
    | ENot Exp
    | EDeref Exp
    | ERefer Exp
    | ERInt
    | ERDou
    | ERStr
    | EArr Exp Exp
    | ECall Ident [Exp]
    | EVar Ident
    | EStr String
    | EInt Integer
    | EChar Char
    | EDouble Double
    | ETrue
    | EFalse
  deriving (Eq, Ord, Show, Read)

data Type
    = TInt
    | TDouble
    | TBool
    | TStr
    | TChar
    | TPtr Type
    | TArray Type
    | TMem Type
  deriving (Eq, Ord, Show, Read)

data PMet
    = PVal Ident
    | PValres Ident
    | PName Ident
    | PRef Ident
    | PImpl Ident
  deriving (Eq, Ord, Show, Read)

