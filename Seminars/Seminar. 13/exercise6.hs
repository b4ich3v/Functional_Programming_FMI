calculate :: [(String, Float)] -> ArithExpr -> Maybe Float
calculate vars expr = case expr of
    Const c -> Just c
    Var x -> lookup x vars
    Add a b -> liftM2 (+) (calculate vars a) (calculate vars b)
    Sub a b -> liftM2 (-) (calculate vars a) (calculate vars b)
    Mul a b -> liftM2 (*) (calculate vars a) (calculate vars b)
    Div a b -> do
        denominator <- calculate vars b
        if denominator == 0 then Nothing else (/ denominator) <$> calculate vars a
    Pow a b -> do
        base <- calculate vars a
        exponent <- calculate vars b
        Just (base ** exponent)
