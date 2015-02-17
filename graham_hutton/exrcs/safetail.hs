-- safetail function

ls                   =   [1,2,3,4,5,6]

safetail1 xs         =   if null xs then [] else tail xs

safetail2 []         =  []
safetail2 (_:xs)     =  xs

--safetail3 (_:xs)
--                    |   null xs      =   []
--                    |   otherwise    =   tail xs


--safetail4 xs            =   tail xs
--safetail4 []            =   []

safetail5 []        =   []
safetail5 xs        =   tail xs


--safetail6 [x]       =   [x]
--safetail6 (_:xs)    =   xs

safetail7
    =   \ xs ->
        case xs of
            [] -> []
            (_:xs) -> xs


