-- https://stepik.org/lesson/8414/step/6?unit=1553

module Task8 where 

seqA :: Integer -> Integer
seqA n | n >= 0 && n <= 2 = n + 1
       | n >= 3 = 
        let 
            initial = 4
            f x y z = x + y - (2 * z)
            helper x y z count k | count > k = f x y z
                                 | count <= k = helper (f x y z) x y (count + 1) k
        in helper 3 2 1 initial n  
