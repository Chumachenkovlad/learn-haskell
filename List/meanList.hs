-- https://stepik.org/lesson/5790/step/8?unit=1136
module MeanList where

meanList :: [Double] -> Double
meanList = (\(s,l) -> s/l) . foldr (\x (s, l) -> (x+s,l+1))

