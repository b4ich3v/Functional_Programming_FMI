module ListMap (listMap) where

listMap :: (a -> b) -> [a] -> [b]
listMap _ [] = []
listMap f (x:xs) = f x : listMap f xs
