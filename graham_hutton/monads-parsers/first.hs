-- Basic parsers

type Parser a       =   String -> [(a, String)]

return1             ::  a -> Parser a
return1 v           =   \inp -> [(v, inp)]


failure             ::  Parser a
failure             =   \inp -> []


item                ::  Parser Char
item                =   \inp -> case inp of
                                    [] -> []
                                    (x:xs) -> [(x,xs)]


(+++)               ::  Parser a -> Parser a -> Parser a
p +++ q             =   \inp -> case p inp of
                                    []          ->  parse q inp
                                    [(v, out)]  ->  [(v, out)]


parse               ::  Parser a -> String -> [(a, String)]
parse p inp         =   p inp
