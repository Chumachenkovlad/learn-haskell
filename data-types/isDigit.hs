import Data.Char(isDigit)
import Data.List(find)

findDigit :: [Char] -> Maybe Char
findDigit = find isDigit

findDigitOrX :: [Char] -> Char
findDigitOrX s = case findDigit s of
        Nothing -> 'X'
        Just d -> d
