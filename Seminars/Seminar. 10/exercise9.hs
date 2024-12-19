module Insert (insert) where

insert :: Int -> a -> [a] -> [a]
insert _ x [] = [x]
insert n x l
    | n <= 0 = x : l
    | otherwise = case l of
        [] -> [x]
        (y:ys) -> y : insert (n - 1) x ys
