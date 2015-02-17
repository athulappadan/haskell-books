-- fold right implementations

sum1            =   foldr (+) 0
product1        =   foldr (*) 1
or1             =   foldr (||) False
and1            =   foldr (&&) True


-- implementation of "length" function

len             =   foldr(\_ n -> 1 + n) 0


