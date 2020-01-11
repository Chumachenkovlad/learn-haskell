data Shape = Circle Double | Rectangle Double Double

c = Circle 2
r = Rectangle 1 2

area :: Shape -> Double
area (Circle r) = pi * r ^ 2
area (Rectangle a b) = a * b
