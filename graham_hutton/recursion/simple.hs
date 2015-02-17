-- simple recursive functions

factorial_ 0            =   1
factorial_ n            =   n * factorial_ (n-1)

-- sumint returns the sum of integers upto n

sumint                  ::  Int -> Int

sumint 0                =   0
sumint n                =   n + sumint(n-1)

-- product_list returns the product of items in a list

product_list            ::  Num a => [a] -> a

product_list []         =   1
product_list (n : ns)   =   n * product_list(ns)

-- reverse_list implements the library function reverse

reverse_list            ::  [a] -> [a]

reverse_list []         =   []
reverse_list (x:xs)     =   reverse_list xs ++ [x]


