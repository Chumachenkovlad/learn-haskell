-- https://stepik.org/lesson/12399/step/7?unit=2829
module Task15 where 

class (Bounded a, Enum a, Ord a) => SafeEnum a where

  ssucc :: a -> a 
  ssucc a | a == maxBound = minBound
          | otherwise = succ a

  spred :: a -> a
  spred a | a == minBound = maxBound
          | otherwise = pred a

