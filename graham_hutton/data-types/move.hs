-- basic move operations (Left', Right', Up', Down')

type Pos    =   (Int, Int)

data Move   =   Left' | Right' | Up' | Down'

move            ::  Move -> Pos -> Pos

move Left' (x,y) =   (x-1, y)
move Right' (x,y) =  (x+1, y)
move Up' (x,y)   =   (x, y-1)
move Down' (x,y) =   (x, y+1)

moves           ::  [Move] -> Pos -> Pos

moves [] p      =   p
moves (m:ms) p  =   moves ms (move m p)

flip            ::  Move -> Move

flip Left'       =   Right'
flip Right'      =   Left'
flip Up'         =   Down'
flip Down'       =   Up'


