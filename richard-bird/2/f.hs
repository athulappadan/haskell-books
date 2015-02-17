
--power            ::  Integer -> Integral -> Integer
power x n
    | n == 0    =   1
    | n == 1    =   x
    | even n    =   power (x*x)  m
    | odd n     =   x * power (x*x) (m-1)
                    where
                        m = n `div` 2
