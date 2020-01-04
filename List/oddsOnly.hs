module OddsOnly where

oddsOnly :: Integral a => [a] -> [a]
oddsOnly = filter odd
