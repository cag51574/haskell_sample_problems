fib n = take n fiblist
  where fiblist = 0:1:(zipWith (+) fiblist (tail fiblist))

fact:: Integer -> Integer
fact n = product [1..n]

take':: (Num i,Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0   = []
take' _ []     = []
take' n (x:xs) = x : take' (n-1) xs


