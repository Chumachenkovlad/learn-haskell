module RevRange where

import Data.List

revRange :: (Char,Char) -> [Char]
revRange (firstChar, lastChar) = unfoldr g lastChar where
    g = (\x -> if x >= firstChar && x <= lastChar then Just (x, pred x) else Nothing)

