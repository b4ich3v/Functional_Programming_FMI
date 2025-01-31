data Status = Zavurshena | Nezavurshena
  deriving (Show, Eq)

data Task = Task 
  { taskName   :: String
  , taskStatus :: Status 
  } deriving (Show, Eq)
