module Exists (exists) where

exists :: (a -> Bool) -> [a] -> Bool
exists _ [] = False
exists p (x:xs) = p x || exists p xs
