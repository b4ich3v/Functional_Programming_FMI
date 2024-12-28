data Status = Completed | NotCompleted deriving (Eq, Show)
data Task = Task String Status deriving (Eq, Show, Ord)
