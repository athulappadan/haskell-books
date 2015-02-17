
isDigit     ::  Char -> Bool
isDigit c   =   c >= '0' && c <= '9'

even        ::  Integral a => a -> Bool
even n      =   (n `rem` 2) == 0

spiltAt     ::  Int -> [a] -> ([a], [a])
spiltAt n xs =  (take n xs, drop n xs)

recip       ::  Fractional a => a -> a
recip n     =   1 / n

absl         ::  Int -> Int
absl n       = if n >= 0 then n else -n

abslt       ::  Int -> Int
abslt n | n >= 0    =   n
        | otherwise =   -n


