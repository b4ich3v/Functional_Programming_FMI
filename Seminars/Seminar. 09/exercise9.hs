module Frepeat (frepeat) where

frepeat :: Int -> (a -> a) -> a -> a
frepeat n f x
  | n < 0     = error 
  | n == 0    = x
  | otherwise = frepeat (n - 1) f (f x)
