-- interactive programs

import Data.Char

putstr xs   =   sequence_6 [putChar x | x <- xs]

sequence_1 []       =   return ()
sequence_1 (x:xs)   =   x >> sequence_1 xs

sequence_2 []       =   return ()
sequence_2 (x:xs)   =   (foldl (>>) x xs) >> return ()

sequence_3 xs       =   foldl (>>) (return ()) xs

sequence_5 []       =   return ()
sequence_5 (x:xs)   =   x >>= \ _ -> sequence_5 xs

sequence_6 xs       =   foldr (>>) (return []) xs
