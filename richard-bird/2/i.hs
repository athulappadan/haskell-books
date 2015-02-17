-- Palidrome checking

import Data.Char

rmSymbols           ::  String -> String
rmSymbols xs        =   map toLower $ filter isAlpha xs

isPalindrome        ::  String -> Bool
isPalindrome ws     =   ws == reverse ws

testPalindrome      ::  String -> Bool
testPalindrome      =   isPalindrome . rmSymbols


palindrome          ::  IO()
palindrome
    =   do {putStrLn "Enter a string:";
            xs <- getLine;
            if testPalindrome xs then putStrLn "Yes!"
            else putStrLn "No!"}
