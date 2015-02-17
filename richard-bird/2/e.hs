-- Use of Maybe monad to write a function first


-- | first takes a filter function p and a list and returns the first element in the list satisfying p

first           ::  (a -> Bool) -> [a] -> Maybe a
first p []      =   Nothing
first p (x:xs)
        | p x   =   Just x
        | otherwise = first p xs
