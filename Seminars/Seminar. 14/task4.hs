movingAverage :: Int -> [Float] -> [Float]
movingAverage n xs = map average (windows n xs)
  where
    average ws = sum ws / fromIntegral n

    windows :: Int -> [a] -> [[a]]
    windows m ys = case take m ys of
      ws | length ws == m -> ws : windows m (tail ys)
         | otherwise      -> []  
