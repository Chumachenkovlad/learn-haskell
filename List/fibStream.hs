module FibStream where

fibStream :: [Integer]
fibStream' x y = x : fibStream' y (zipWith (+) x y)
fibStream = concat (fibStream' [0] [1])
