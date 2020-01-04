module Permutations where 

insertAt element position array = updatedArray where
    (left, right) = splitAt position array
    updatedArray = concat [left, [element], right]

getCombinations elem arr = map (\pos -> insertAt elem pos arr) [0..(length arr)]

perms :: [a] -> [[a]]

perms [] = [[]]
perms (x: []) = [[x]]
perms (x:xs) = concatMap (getCombinations x) (perms xs)

