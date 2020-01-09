module EvenOnly where

evenOnly :: [a] -> [a]
evenOnly = (\(exs, oxs, idx) -> if even idx then exs else oxs) . foldr f ini where
    zero :: Integral a => a
    zero = 0 
    ini :: Integral b => ([a], [a], b)
    ini = ([], [], zero)
    f :: Integral b => a -> ([a], [a], b) -> ([a], [a], b)
    f nextItem (exs, oxs, idx) | even idx  = (nextItem:exs, oxs, idx + 1)
                               | otherwise = (exs, nextItem:oxs, idx + 1)
