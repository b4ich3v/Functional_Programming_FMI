module LFilter (lfilter) where

import List (List(..))

lfilter :: (a -> Bool) -> List a -> List a
lfilter _ Empty = Empty
lfilter p (Cons x xs)
    | p x = Cons x (lfilter p xs)
    | otherwise = lfilter p xs
