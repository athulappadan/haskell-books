-- lowers return the number of lower-case letters in a string

import Data.Char

lowers      ::  String -> Int

lowers xs   =  length [x | x <- xs, isLower x]


-- count returns the number of occurances of a particular character

count       ::  Char -> String -> Int

count x xs  =  length [x' | x' <- xs, x == x']


