module DoSomeWork where 

data Result = Success | Failure
data Result' = Result' Result | ErrorCode Int
data SomeData = SomeData Int

instance Show Result' where
    show (Result' Success) = "Success"
    show (ErrorCode code) = "Fail: " ++ show code

doSomeWork :: SomeData -> (Result, Int) 
doSomeWork (SomeData 0) = (Success, 0) 
doSomeWork (SomeData n) = (Failure, n)

doSomeWork' :: SomeData -> Result'
doSomeWork' d = 
    case doSomeWork d of
        (Success, _) -> Result' Success
        (_, n) -> ErrorCode n
