module ListFilter (listFilter) where

listFilter :: (a -> Bool) -> [a] -> [a]
listFilter _ [] = []
listFilter p (x:xs)
    | p x = x : listFilter p xs
    | otherwise = listFilter p xs
