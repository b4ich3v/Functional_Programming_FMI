data TaskGraph = TaskGraph 
  { tasks :: [Task]
  , edges :: [(Task, Task)]  -- (blocked, blocker)
  } deriving (Show, Eq)
