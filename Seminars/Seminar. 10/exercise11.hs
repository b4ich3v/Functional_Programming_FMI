module ListFoldr (listFoldr) where

listFoldr :: (a -> b -> b) -> b -> [a] -> b
listFoldr _ init [] = init
listFoldr op init (x:xs) = op x (listFoldr op init xs)
