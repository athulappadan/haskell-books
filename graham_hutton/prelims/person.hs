
data Thing  =   Shoe
            |   Ship
            |   SealingWax
            |   Cabbage
            |   King
    deriving Show


shoe :: Thing
shoe =  Shoe

listO'Things    ::  [Thing]
listO'Things    =   [Shoe, Ship, SealingWax, Cabbage, King]

isSmall ::  Thing -> Bool
isSmall Shoe        =   True
isSmall Ship        =   False
isSmall SealingWax  =   True
isSmall Cabbage     =   True
isSmall King        =   False


data Person =   Person String Int Thing
    deriving Show

brent   ::  Person
brent   =   Person "Brent" 31 SealingWax

stan    ::  Person
stan    =   Person "stan" 94 Cabbage

getAge  ::  Person -> Int
getAge (Person _ a _)   =   a


