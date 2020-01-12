import Data.Text (splitOn, pack)

data Error = ParsingError | IncompleteDataError | IncorrectDataError String

data Person = Person { firstName :: String, lastName :: String, age :: Int }

eqDelimiter = pack "="
lineDelimiter = pack "\n"
                    
parseField = case splitOn eqDelimiter of
    ([]) -> Left ParsingError
    (x:[]) -> Left ParsingError
    (x:y:[]) -> Right [x, y]
    _ -> Left ParsingError

inputStringToEitherFieldsOrError str = (map parseField) $ (filter (/= "")) $ splitOn lineDelimiter $ pack str
eitherFieldsOrError fields = map parseField fields = Left ParsingError

parsePerson :: String -> Either Error Person
parsePerson str = case eitherFieldsOrError $ parseFullInputString str of
        (Left _) -> Left ParsingError
        (Right fields) -> case checkFieldsIncomplete fields of
            (Left _) -> Left IncompleteDataError
            (Right fields) -> case checkAge fields of
                (Left data) -> Left IncorrectDataError data
                (Right (fn,ln,ag)) -> Right Person {firstName = fn, lastName = ln, age = ag}

-- NOT FINISHED
