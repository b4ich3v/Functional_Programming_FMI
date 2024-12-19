module LMap (lmap) where

import List (List(..))

lmap :: (a -> b) -> List a -> List b
lmap _ Empty = Empty
lmap f (Cons x xs) = Cons (f x) (lmap f xs)
