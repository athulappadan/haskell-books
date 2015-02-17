-- implementation of map function

map1        ::  (a -> b) -> [a] -> [b]

map1 f xs   =   [f x | x <- xs]

map2        ::  (a -> b) -> [a] -> [b]

map2 g []   =   []

map2 g (y : ys) =   g y : map2 g ys

