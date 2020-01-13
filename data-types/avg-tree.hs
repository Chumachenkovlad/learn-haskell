data Tree a = Leaf a | Node (Tree a) (Tree a)

avg :: Tree Int -> Int
avg t =
    let (c,s) = go t
    in s `div` c
  where
    go :: Tree Int -> (Int,Int)
    go (Leaf x) = (1,x)
    go (Node a b) = ((fst ga) + (fst gb), (snd ga) + (snd gb)) where
        ga = go a
        gb = go b

go :: Tree Int -> (Int,Int)
go (Leaf x) = (1,x)
go (Node a b) = ((fst ga) + (fst gb), (snd ga) + (snd gb)) where
    ga = go a
    gb = go b
