
--instance Monad [] where 
--        return x    =   [x]

--xs >>= f            =   concat (map f xs)

pairs1        ::  [a] -> [b] -> [(a,b)]
pairs1 xs ys  =   do x <- xs
                     y <- ys
                     return (x,y)


