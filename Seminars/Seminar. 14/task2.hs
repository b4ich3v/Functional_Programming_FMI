data TaskGraph = TaskGraph 
  { tasks :: [Task]
  , edges :: [(Task, Task)]  
  } deriving (Show, Eq)
