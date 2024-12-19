module AverageableList () where

import List (List(..))
import Averageable (Averageable(..))
import LFoldr (lfoldr)

instance Averageable (List Float) where
    avg l = total / fromIntegral count
        where
            total = lfoldr (+) 0 l
            count = lfoldr (\_ acc -> acc + 1) 0 l
