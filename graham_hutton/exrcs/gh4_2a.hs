safetail    ::  Eq a => [a] -> [a]

safetail xs =   if xs == [] then [] else tail xs


safetail1   ::  Eq a => [a] -> [a]

safetail1 xs |  xs == []    =   []
             |  otherwise   =   tail xs



safetail2       ::  Eq a => [a] -> [a]

safetail2 []    =   []

safetail2 xs     =   tail xs


