module MyConcat (myConcat) where

myConcat :: [a] -> [a] -> [a]
myConcat [] ys     = ys
myConcat (x:xs) ys = x : myConcat xs ys
