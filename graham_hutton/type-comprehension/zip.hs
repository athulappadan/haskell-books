pairs       ::  [a] -> [(a,a)]

pairs xs    =   zip xs (tail xs)

-- to test if sorted

sorted      ::  Ord a => [a] -> Bool

sorted xs   =   and[x <= y | (x,y) <- pairs xs]


