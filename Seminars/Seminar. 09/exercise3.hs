module MyAbs (myAbs) where

myAbs :: Int -> Int
myAbs n
  | n < 0     = -n
  | otherwise = n
