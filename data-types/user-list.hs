data List a = Nil | Cons a (List a) deriving Show

fromList :: List a -> [a]
fromList Nil = []
fromList (Cons head' tail') = head':(fromList tail')

toList :: [a] -> List a
toList [] = Nil
toList (x:xs) = Cons x (toList xs)
