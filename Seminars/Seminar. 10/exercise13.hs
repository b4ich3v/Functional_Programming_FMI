module Sum (sumList) where

sumList :: Num a => [a] -> a
sumList l = listFoldr (+) 0 l
