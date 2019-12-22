module Task7 where

fibonacci :: Integer -> Integer
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | n > 0 = helper 0 1 n 3
            | n < 0 = (-1)^((-1) * n + 1) * fibonacci ((-1) * n)

helper x y n count | count > n = x + y
                   | count <= n = helper (y) (x + y) n (count + 1)       
