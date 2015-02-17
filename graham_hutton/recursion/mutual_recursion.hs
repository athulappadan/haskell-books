-- evens and odds return list of items at even and odd positions

evens           ::  [a] -> [a]
evens []        =   []
evens (x:xs)    =   x : odds xs

odds            ::  [a] -> [a]
odds []         =   []
odds(_: xs)     =   evens xs


