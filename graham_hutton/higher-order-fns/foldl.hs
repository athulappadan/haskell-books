-- fold left

sum1        =   foldl (+) 0
product1    =   foldl (*) 1

len         =   foldl (\ n _ -> 1 + n) 0

