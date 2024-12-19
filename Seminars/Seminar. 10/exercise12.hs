module ListFoldl (listFoldl) where

listFoldl :: (b -> a -> b) -> b -> [a] -> b
listFoldl _ init [] = init
listFoldl op init (x:xs) = listFoldl op (op init x) xs
