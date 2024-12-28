import qualified Data.Set as Set
import qualified Data.Map as Map
import Data.Maybe (fromMaybe)

taskOrder :: TaskGraph -> Maybe [Task]
taskOrder (TaskGraph edges) = kahn sortedEdges initialInDegree Set.empty []
  where
    sortedEdges = edges
    initialInDegree = Map.fromListWith (+) [(t, 0) | (t, _) <- sortedEdges] `Map.union` Map.fromListWith (+) [(dep, 1) | (_, deps) <- sortedEdges, dep <- deps]
    kahn _ inDeg visited result
      | Set.size visited == Map.size inDeg = Just (reverse result)
      | Set.null ready = Nothing
      | otherwise = kahn sortedEdges newInDeg newVisited (t : result)
      where
        ready = Set.fromList [t | (t, deg) <- Map.toList inDeg, deg == 0, not (t `Set.member` visited)]
        newVisited = Set.union visited ready
        (newInDeg, _) = foldr update (inDeg, ()) (Map.toList sortedEdges)
        update (t, deps) (m, acc)
          | t `Set.member` ready = foldr (\dep acc' -> Map.adjust (\x -> x - 1) dep acc') acc deps
          | otherwise = (m, acc)
        t = Set.findMin ready
