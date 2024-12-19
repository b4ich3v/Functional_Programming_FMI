module IsIntPrefix (isIntPrefix) where

isIntPrefix :: [Int] -> [Int] -> Bool
isIntPrefix [] _          = True
isIntPrefix _ []          = False
isIntPrefix (x:xs) (y:ys) = (x == y) && isIntPrefix xs ys
