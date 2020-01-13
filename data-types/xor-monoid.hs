import Data.Monoid

newtype Xor = Xor { getXor :: Bool }
    deriving (Eq,Show)

instance Semigroup Xor where
  Xor m1 <> Xor m2 = Xor (m1 /= m2)

instance Monoid Xor where
  mempty = Xor False
