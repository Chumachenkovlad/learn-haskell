-- https://stepik.org/lesson/7009/step/4?unit=1472
data Nat = Zero | Suc Nat deriving Show

fromNat :: Nat -> Integer
fromNat Zero = 0
fromNat (Suc n) = fromNat n + 1

toNat 0 = Zero
toNat x = Suc (toNat (x - 1)) 

one = toNat 1
five = toNat 5

add :: Nat -> Nat -> Nat
add x Zero = x
add x (Suc rest) = add (Suc x) rest

mul :: Nat -> Nat -> Nat
mul Zero _ = Zero
mul _ Zero = Zero
mul (Suc Zero) x = x
mul x (Suc Zero) = x
mul x (Suc rest) = mul x rest `add` x

trueFac 0 = 0
trueFac 1 = 1
trueFac x = x * trueFac (x - 1)

fac :: Nat -> Nat
fac Zero = one
fac (Suc Zero) = one
fac x@(Suc rest) = x `mul` fac rest

