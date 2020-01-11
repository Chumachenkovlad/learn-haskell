import Data.Time.Clock
import Data.Time.Format
import System.Locale

timeToString :: UTCTime -> String
timeToString = formatTime defaultTimeLocale "%a %d %T"

data LogLevel = Error | Warning | Info deriving Show

data LogEntry = LogEntry {timestamp :: UTCTime, logLevel:: LogLevel, message :: String }

logLevelToString :: LogLevel -> Strings
logLevelToString = show

logEntryToString :: LogEntry -> String
logEntryToString (LogEntry timestamp logLevel message) = timeToString timestamp ++ ": " ++ logLevelToString logLevel ++ ": " ++ message
