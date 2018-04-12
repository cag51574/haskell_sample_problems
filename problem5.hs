--Reverse a list
myReverse :: [a] -> [a]
myReverse [] = error "cant reverse an empty list"
myReverse (x:xs) = reverse (x:xs)

myReverse' :: [a] -> [a]
myReverse' [] = error "cant reverse an empty list"
myReverse' (x:xs) = myReverse' xs ++ [x]

myReverse'' :: [a] -> [a]
myReverse'' (x:xs) = myReverse'' xs + x


