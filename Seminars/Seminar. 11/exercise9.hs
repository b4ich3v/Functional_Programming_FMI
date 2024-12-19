module Averageable (Averageable(..)) where

class Averageable a where
    avg :: a -> Float
