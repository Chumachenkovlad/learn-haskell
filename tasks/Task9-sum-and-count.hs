-- https://stepik.org/lesson/8414/step/8?unit=1553
module Task9 where 


import Data.Char

sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = (digitsSum, count) 
    where
        numToString = show $ abs x
        count = toInteger $ length $ numToString
        charToInteger c = toInteger $ digitToInt c
        digitsSum = sum $ map charToInteger $ numToString

