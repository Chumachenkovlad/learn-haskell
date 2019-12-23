module Task10 where

integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b | a == b = 0
                  | otherwise = square
    where
        k = if a > b then -1 else 1
        localSquare f1 f2 = 0.5 * h * (f1 + f2)
        h = (abs (b - a)) / 1000000
        limit = max a b
        helper acc x1 x2 f1 f2 | x2 > limit = acc
                               | otherwise = helper 
                                    (acc + localSquare f1 f2) 
                                    x2 (x2 + h) 
                                    f2 (f (x2 + h))
        start = min a b                    
        square = k * helper 0 start (start + h) (f start) (f start + h)           
