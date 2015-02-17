-- list of positive factors

factors     ::  Int -> [Int]

factors n   =   [x | x <- [1..n], n `rem` x == 0]

-- to test a number is prime

prime       ::  Int -> Bool

prime n     =   factors n == [1,n]


-- to generate a list of prime numbers upto n 

primes      ::  Int -> [Int]

primes n    =   [x | x <- [2..n], prime x]


