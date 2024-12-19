module Fib (fib) where

fib :: Int -> Int
fib n
  | n < 0     = error 
  | n == 0    = 0
  | n == 1    = 1
  | otherwise = fib (n - 1) + fib (n - 2)
