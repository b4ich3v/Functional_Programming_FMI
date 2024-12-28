movingAverage :: Int -> [Float] -> [Float]
movingAverage n xs = go n xs [] 0
  where
    go _ [] _ _ = []
    go m (y:ys) window s
      | length window < m = go m ys (y:window) (s + y) 
      | otherwise = let avg = (fromIntegral s) / fromIntegral m
                        newWindow = y : init window
                        newSum = s + y - last window
                    in avg : go m ys newWindow newSum
