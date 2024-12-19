module Push (push) where

push :: a -> [a] -> [a]
push x [] = [x]
push x (y:ys) = y : push x ys
