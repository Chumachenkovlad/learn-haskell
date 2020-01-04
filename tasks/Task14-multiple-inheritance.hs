module Task14 where

class KnownToGork a where
    stomp :: a -> a
    doesEnrageGork :: a -> Bool

class KnownToMork a where
    stab :: a -> a
    doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
    stompOrStab :: a -> a
    stompOrStab a | (doesEnrageGork a) && (not (doesEnrageMork a)) = (stab a)
                  | (doesEnrageMork a) && (not (doesEnrageGork a)) = (stomp a)
                  | (doesEnrageMork a) && (doesEnrageGork a) = stomp (stab a) 
                  | (not (doesEnrageMork a)) && (not (doesEnrageGork a)) = a
