-- https://stepik.org/lesson/8417/step/9?unit=1555
module Task10 where

on3 :: (b -> b -> b -> c) -> (a -> b) -> a -> a -> a -> c
on3 op f x y z = op (f x) (f y) (f z) 
