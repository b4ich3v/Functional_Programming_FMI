module ForAll (forAll) where

forAll :: (a -> Bool) -> [a] -> Bool
forAll _ [] = True
forAll p (x:xs) = p x && forAll p xs
