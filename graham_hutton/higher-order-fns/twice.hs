-- twice accepts a function and a variable and applies the function twice

twice           ::  (a -> a) -> a -> a

twice f x       =   f (f x)

