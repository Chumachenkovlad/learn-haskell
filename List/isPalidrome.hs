module IsPalindrome where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome initial = ((initial ==) . reverse) initial
