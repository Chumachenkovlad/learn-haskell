data Tree a = Leaf a | Node (Tree a) (Tree a)

height :: Tree a -> Int
height (Leaf _) = 0
height (Node a b) = 1 + max (height a) (height b)

size :: Tree a -> Int
size (Leaf _) = 1
size (Node a b) = 1 + sum [ size a, size b]

tree3 = (Node (Node (Node (Leaf 1) (Leaf 1)) (Leaf 1)) (Node (Leaf 1) (Leaf 1)))
