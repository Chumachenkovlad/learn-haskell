module FilterByFewConditions where

filterDisj :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj p1 p2 arr = filter (\x -> (p1 x) || (p2 x))  arr

