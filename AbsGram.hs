

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
    = SDecl Decl
    | SExp Exp
    | SBlock [Stm]
    | SWhile Ass Exp [Stm]
    | SReturn Exp
    | SFunc Function
    | SAss Ass
    | SCond Exp [Stm]
    | SCondEl Exp [Stm] [Stm]
  deriving (Eq, Ord, Show, Read)

data Ass = DAss Exp Exp
  deriving (Eq, Ord, Show, Read)

data Exp
    = EOr Exp Exp
    | EAnd Exp Exp
    | ELt Exp Exp
    | EGt Exp Exp
    | EAdd Exp Exp
    | ESub Exp Exp
    | EMul Exp Exp
    | EDiv Exp Exp
    | EDeref Exp
    | ENot Exp
    | EArr Exp Exp
    | ECall Ident [Exp]
    | EVar Ident
    | EStr String
    | EInt Integer
    | EDouble Double
    | EParen Exp
  deriving (Eq, Ord, Show, Read)

data Type = TInt | TDouble | TBool | TArray Type | TPtr Type
  deriving (Eq, Ord, Show, Read)

data PMet
    = PVal Ident
    | PValres Ident
    | PName Ident
    | PRef Ident
    | PImpl Ident
  deriving (Eq, Ord, Show, Read)

