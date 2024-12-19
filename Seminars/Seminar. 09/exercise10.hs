module Frepeated (frepeated) where

frepeated :: Int -> (a -> a) -> (a -> a)
frepeated n f
  | n < 0     = error 
  | n == 0    = \x -> x
  | otherwise = \x -> f (frepeated (n - 1) f x)
