-- replicate function

replice1 0 _    =   []
replice1 n x    =   x : replice1 (n-1) x

