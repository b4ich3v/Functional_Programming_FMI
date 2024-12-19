module RPS (RPS(..), beats) where

data RPS = Rock | Paper | Scissors deriving (Show)

beats :: RPS -> RPS -> Bool
beats Rock Scissors = True
beats Scissors Paper = True
beats Paper Rock = True
beats _ _ = False
