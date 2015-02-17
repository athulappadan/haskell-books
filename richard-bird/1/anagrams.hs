-- calculates n-letter anagrams from a string list of n words

getWords            ::  Int -> [String] -> [String]
getWords n ws       =   [w | w <- ws, length w == n]


--makeLables          ::  Ord b => [b] -> [(b, b)]
makeLabels ws       =   zip (map sort1 ws) ws

--sort1               ::  Ord a => [a] -> [a]
sort1 []            =   []
sort1 (w:ws)        =   sort1 smaller ++ [w] ++ sort1 larger
                        where
                            smaller = [a | a <- ws, a <= w]
                            larger  = [b | b <- ws, b > w]


sortLables []           =   []
sortLables ((l, w):ts)  =   sortLables smaller ++ [(l, w)] ++ sortLables larger
                            where
                                smaller = [(a, b) | (a, b) <- ts, a <= l]
                                larger  = [(c, d) | (c, d) <- ts, c > l]

