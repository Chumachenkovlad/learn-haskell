avg :: Int -> Int -> Int -> Double

a = 1 :: Int
b = 2 :: Int
c = 3 :: Int

avg a b c = argsSum / 3 where
    argsSum = sum $ map fromIntegral [a, b, c] 

const $ const (4 + 5) $ max 42
