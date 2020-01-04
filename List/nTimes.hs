
module NTimes where

nTimes:: a -> Int -> [a]
nTimes x n | n < 0 = error "n should be gte 0"
           | n == 0 = []
           | n == 1 = [x]
           | otherwise = x : nTimes x (n - 1)
