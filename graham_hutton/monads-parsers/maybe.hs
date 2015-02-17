-- implementation of safeDiv using maybe monad

safeDiv ::  Int -> Int -> Maybe Int
safeDiv n m =   if m == 0 then Nothing else Just (n `div` m)


-- a simple evaluator

data Expr   =   Val Int | Div Expr Expr


seqn                ::  Maybe a -> Maybe b -> Maybe (a,b)
seqn Nothing _           =   Nothing
seqn _ Nothing           =   Nothing
seqn (Just x) (Just y)   =   Just (x,y)


eval                ::  Expr -> Maybe Int
eval (Val n)        =   Just n
eval (Div x y)      =   apply f (eval x `seqn` eval y)
                        where f (n,m) = safeDiv n m


apply               ::  (a -> Maybe b) -> Maybe a -> Maybe b
apply f Nothing     =   Nothing
apply f (Just x)    =   f x





