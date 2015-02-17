-- fibonacci series

fibonacci           ::  Int -> Int

fibonacci 0         =   0
fibonacci 1         =   1
fibonacci n         =   fibonacci (n-2) + fibonacci (n-1)


-- qsort implementation

qsort               ::  Ord a => [a] -> [a]

qsort []            =   []
qsort(x:xs)         =   qsort smaller ++ [x] ++ qsort larger
                        where
                            smaller =   [a | a<-xs, a <= x]
                            larger  =   [b | b<-xs, b > x]


