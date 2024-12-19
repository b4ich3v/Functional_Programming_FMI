module LFoldr (lfoldr) where

import List (List(..))

lfoldr :: (a -> b -> b) -> b -> List a -> b
lfoldr _ init Empty = init
lfoldr op init (Cons x xs) = op x (lfoldr op init xs)
