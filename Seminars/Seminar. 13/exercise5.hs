data ArithExpr
    = Const Float
    | Var String
    | Add ArithExpr ArithExpr
    | Sub ArithExpr ArithExpr
    | Mul ArithExpr ArithExpr
    | Div ArithExpr ArithExpr
    | Pow ArithExpr ArithExpr
    deriving (Eq, Show)