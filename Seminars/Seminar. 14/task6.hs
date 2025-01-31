calculate :: [(String, Float)] -> ArithExpr -> Maybe Float
calculate _   (Const x) = Just x
calculate env (Var s)   = lookup s env
calculate env (Add a b) = do
  x <- calculate env a
  y <- calculate env b
  return (x + y)
calculate env (Sub a b) = do
  x <- calculate env a
  y <- calculate env b
  return (x - y)
calculate env (Mul a b) = do
  x <- calculate env a
  y <- calculate env b
  return (x * y)
calculate env (Div a b) = do
  x <- calculate env a
  y <- calculate env b
  if y == 0 
    then Nothing
    else return (x / y)
calculate env (Pow a b) = do
  x <- calculate env a
  y <- calculate env b
  return (x ** y)
calculate env (Ln a) = do
  x <- calculate env a
  if x <= 0 
    then Nothing
    else return (log x)
