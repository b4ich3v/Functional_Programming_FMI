differentiate :: String -> ArithExpr -> ArithExpr
differentiate var expr = case expr of
    Const _ -> Const 0
    Var x -> if x == var then Const 1 else Const 0
    Add a b -> Add (differentiate var a) (differentiate var b)
    Sub a b -> Sub (differentiate var a) (differentiate var b)
    Mul a b -> Add (Mul (differentiate var a) b) (Mul a (differentiate var b))
    Div a b -> Div (Sub (Mul (differentiate var a) b) (Mul a (differentiate var b))) (Pow b (Const 2))
    Pow a (Const c) -> Mul (Mul (Const c) (Pow a (Const (c - 1)))) (differentiate var a)
    Pow a b -> Mul (Pow a b) (Add (Mul (differentiate var b) (Log a)) (Div (Mul b (differentiate var a)) a))
