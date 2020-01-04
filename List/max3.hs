module Max3 where

max3 :: Ord a => [a] -> [a] -> [a] -> [a]
max3 x y z = zipWith3 (\x y z -> maximum [x, y, z]) x y z
