-- computes n most commonly used words in an input text

import Data.Char
import Data.List

sortWords           ::  [String] -> [String]
sortWords []        =   []
sortWords (w:ws)    =   sortWords smaller ++ [w] ++ sortWords larger
                        where
                            smaller = [a | a <- ws, a <= w]
                            larger  = [b | b <- ws, b > w]

countRuns           ::  Eq a => [a] -> [(Int, a)]
countRuns ls        =   map (\l -> (length l, head l)) (group ls)

sortRuns            ::  Ord t => [(t, t1)] -> [(t, t1)]
sortRuns []         =   []
sortRuns ((x, y):ts)     =   sortRuns larger ++ [(x, y)] ++ sortRuns smaller
                        where
                            smaller = [(a, b) | (a, b) <- ts, a <= x]
                            larger  = [(c, d) | (c, d) <- ts, c > x]


commonWords         ::  Int -> String -> [(Int, String)]
commonWords n       =   take n . sortRuns . countRuns . sortWords . words . map toLower


main = do
        putStrLn "enter the string"
        text <- getLine
        mapM_ print (commonWords 3 text)
