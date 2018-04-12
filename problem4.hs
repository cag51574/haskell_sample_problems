--Find number of element in a list
myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = (length xs) + 1

myLength' :: [a] -> Int
myLength' [] = 0
myLength' (x:xs) = 1 + myLength' xs


