type CIN            =   String

addSum              ::  CIN -> CIN
addSum cin          =   cin ++ (show $ sum $ map getDigit cin)

getDigit            ::  Char -> Int
getDigit c          =   read [c]

validCIN            ::  CIN -> Bool
validCIN cin        =   cin == addSum (take 8 cin)
