differentiate :: String -> ArithExpr -> ArithExpr
differentiate _ (Const _) = Const 0
differentiate var (Var s)
  | s == var  = Const 1
  | otherwise = Const 0
differentiate var (Add u v) = Add (differentiate var u) (differentiate var v)
differentiate var (Sub u v) = Sub (differentiate var u) (differentiate var v)
differentiate var (Mul u v) = Add (Mul (differentiate var u) v)
                                  (Mul u (differentiate var v))
differentiate var (Div u v) = Div (Sub (Mul (differentiate var u) v)
                                      (Mul u (differentiate var v)))
                                 (Pow v (Const 2))
differentiate var (Pow u v) =
  let du = differentiate var u
      dv = differentiate var v
  in Mul (Pow u v) (Add (Mul dv (Ln u))
                        (Div (Mul v du) u))
differentiate var (Ln u) =
  Div (differentiate var u) u
