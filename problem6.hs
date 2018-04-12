--is palendrome?
isPalendrome :: (Eq a) => [a] -> Bool
--isPalendrome xs = xs == (reverse xs)
isPalendrome [] = True 
isPalendrome [_] = True 
isPalendrome (x:xs) = x == (tail xs)

