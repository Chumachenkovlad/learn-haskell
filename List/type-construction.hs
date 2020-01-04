module TypeConstruction where

sndHead = snd . head
sndHead1 ((:) ((,) _ x) y) = x
sndHead2 ((,) ((:) _ _) x) = x
sndHead3 ((,) y x : z) = x
sndHead4 ((_, x) : _) = x
sndHead5 ((,) y z : x) = x
sndHead6 ((,) x y : z) = x
