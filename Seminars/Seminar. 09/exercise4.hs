module ComposeInt (composeInt) where

composeInt :: (Int -> Int) -> (Int -> Int) -> (Int -> Int)
composeInt f g = \x -> f (g x)
