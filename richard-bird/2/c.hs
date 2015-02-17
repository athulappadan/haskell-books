import Data.Char

-- | Converts the first letter of a word to Upper case

firstCapital        ::  String -> String
firstCapital xs     =   toUpper (head xs) : tail xs


-- | converts the first letter of each word in a text to upper case

modernise           ::  String -> String
modernise           =   unwords . map firstCapital . words

 
