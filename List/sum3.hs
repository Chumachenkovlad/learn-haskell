-- https://stepik.org/lesson/8326/step/12?unit=1474
module Sum3 where


sum3 :: Num a => [a] -> [a] -> [a] -> [a] 

headOrZero [] = 0 
headOrZero arr = head arr
tailOrEmptyList [] = []
tailOrEmptyList arr = tail arr

sum3 xs ys zs = let
    count = maximum $ map length [xs, ys, zs]
    helper xyzs sums 0 = reverse sums
    helper xyzs sums n = helper tails newSums (n - 1) where
            heads = map headOrZero xyzs
            tails = map tailOrEmptyList xyzs
            newSums = (sum heads) : sums
    in helper [xs, ys, zs] [] count   
