months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]


type Date       =   (Int, Int, Int)

-- | showDate takes a date and prints it in string format

showDate            ::  Date -> String
showDate (d, m, y)  =   show d ++ suffix d ++ " " ++ months !! (m-1) ++ ", " ++ show y


suffix d
    | x == 1        =   "st"
    | x == 2        =   "nd"
    | x == 3        =   "rd"
    | otherwise     =   "th"
    where
        x = d `mod` 10


