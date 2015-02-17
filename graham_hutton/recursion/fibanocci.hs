-- fibanocci series using tail recursion

fib             ::  Int -> Int

fib_helper      ::  Int -> Int -> Int -> Int

fib n           =   fib_helper n 0 1

fib_helper 0 _ _ =  0
fib_helper 1 _ _ =  1
fib_helper m a b =  a + fib_helper (m-1) b (a+b)


