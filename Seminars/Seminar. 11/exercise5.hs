module List (List(..)) where

data List a = Empty | Cons a (List a)

instance Show a => Show (List a) where
    show l = "List(" ++ showList l ++ ")"
        where
            showList Empty = ""
            showList (Cons x Empty) = show x
            showList (Cons x xs) = show x ++ " " ++ showList xs
