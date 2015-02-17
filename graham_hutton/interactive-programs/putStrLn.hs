-- putStrLn different implementations

import Data.Char

putStrLn1 []        =   putChar '\n'
putStrLn1 xs        =   putStr xs >> putStr "\n"


putStrLn2 []        =   putChar '\n'
putStrLn2 xs        =   putStr xs >> putChar '\n'


putStrLn3 []        =   putChar '\n'
putStrLn3 xs        =   putStr xs >>= \x ->  putChar '\n'



