trimBinTree :: Integer -> BinTree a -> BinTree a
trimBinTree 0 (Node x _ _) = Node x undefined undefined
trimBinTree n (Node x left right) = Node x (trimBinTree (n-1) left) (trimBinTree (n-1) right)
