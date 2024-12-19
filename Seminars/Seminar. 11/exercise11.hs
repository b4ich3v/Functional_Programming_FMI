module BinaryTree (BinaryTree(..), isBalanced) where

data BinaryTree a = Empty | Node a (BinaryTree a) (BinaryTree a)

isBalanced :: BinaryTree a -> Bool
isBalanced Empty = True
isBalanced (Node _ left right) =
    abs (height left - height right) <= 1 &&
    isBalanced left &&
    isBalanced right
    where
        height :: BinaryTree a -> Int
        height Empty = 0
        height (Node _ l r) = 1 + max (height l) (height r)
