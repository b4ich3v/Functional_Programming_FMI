import Data.List (partition)

taskOrder :: TaskGraph -> Maybe [Task]
taskOrder (TaskGraph ts es) = kahn es ts []
  where
    inDegree :: Task -> Int
    inDegree t = length [ () | (blocked, blocker) <- es, blocked == t ]

    initialFree = [ t | t <- ts, inDegree t == 0 ]

    kahn :: [(Task, Task)] -> [Task] -> [Task] -> Maybe [Task]
    kahn _ [] sorted 
      | null es = Just (reverse sorted)
      | otherwise = Just (reverse sorted)  
    kahn deps remaining sorted =
      case [ t | t <- remaining, inDegree' t == 0 ] of
        [] -> Nothing  
        freeTasks ->
          let sorted'    = freeTasks ++ sorted
              remaining' = filter (`notElem` freeTasks) remaining
              deps'      = filter (\(blocked, blocker) -> blocker `notElem` freeTasks) deps
              inDegree' t = length [ () | (blocked, _) <- deps', blocked == t ]
          in kahn deps' remaining' sorted'
