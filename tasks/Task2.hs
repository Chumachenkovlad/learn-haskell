module Task2 where 

zeroIfZero x = if x == 0 then 0 else -1 
sign x = if x > 0 then 1 else zeroIfZero x
