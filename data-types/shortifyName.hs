data Person = Person { firstName :: String, lastName :: String, age :: Int } deriving Show

abbrFirstName :: Person -> Person
abbrFirstName p = let
    shortifiedName "" = ""
    shortifiedName (x:[]) = [x];
    shortifiedName (x:xs) = [x] ++ "."
    in p {firstName = shortifiedName $ (firstName p :: [Char])}
