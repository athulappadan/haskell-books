-- creating an enumeration data type Thing

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


