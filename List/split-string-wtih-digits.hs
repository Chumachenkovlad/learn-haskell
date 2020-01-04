module SplitString where

import Data.Char

readDigits :: String -> (String, String)
readDigits str = span isDigit str


