-- basic shapes (Circle and Rectangle)

data Shape      =   Circle Float | Rect Float Float

square          ::  Float -> Shape
square n        =   Rect n n

area            ::  Shape -> Float
area (Circle r) =   pi * r * r
area (Rect x y) =   x * y


