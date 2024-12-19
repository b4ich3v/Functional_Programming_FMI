module Fact (fact) where

fact :: Int -> Int
fact n
  | n < 0     = error 
  | n == 0    = 1
  | otherwise = n * fact (n - 1)
