-- convert numbers upto on million from numerals to string

units   =   ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
teens   =   ["ten", "eleven", "twelve", "thriteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens    =   ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]


convert1        ::  Int -> String
convert1 n      =   units !! n


convert2        ::  Int -> String
convert2 n
    | t == 0    =   units !! u
    | t == 1    =   teens !! u
    | u == 0    =   tens !! (t-2)
    | otherwise =   tens !! (t-2) ++ "-" ++ units !! u
    where
        (t, u)  =   (n `div` 10, n `mod` 10)


convert3        ::  Int -> String
convert3 n
    | h == 0    =   convert2 t
    | t == 0    =   units !! h ++ " hundred "
    | otherwise =   units !! h ++ " hundred " ++ convert2 t
    where
        (h, t)  =   (n `div` 100, n `mod` 100)


convert6        ::  Int -> String
convert6 n
    | m == 0    =   convert3 h
    | h == 0    =   convert3 m ++ " thousand "
    | otherwise =   convert3 m ++ " thousand " ++ link h ++ convert3 h
    where
        (m, h)  =   (n `div` 1000, n `mod`1000)


link            ::  Int -> String
link h
    | h < 100   =   " and "
    | otherwise =   ""


convert         ::  Int -> String
convert n       =   convert6 n
