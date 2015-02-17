-- obtain the frequency table of characters in a given string

import Data.Char

percent         ::  Int ->Int -> Float

percent n m     =   (fromIntegral n / fromIntegral m) * 100


freqs           ::  String -> [Float]

freqs xs        =   [percent (count x xs) n | x <- ['a'..'z']]
                    where n = lowers xs


lowers          ::  String -> Int

lowers xs       =   length [x | x<-xs, isLower x]

count           ::  Char -> String -> Int

count x xs      =   length [x' | x' <- xs, x == x']


