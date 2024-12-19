module Member (member) where

member :: Eq a => a -> [a] -> Bool
member _ [] = False
member x (y:ys) = x == y || member x ys
