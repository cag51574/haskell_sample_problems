--Find the last element of a list? 
myLast :: [a] -> a
myLast a = last a

myLast':: [a] -> a
myLast' [] = error "No end for empty list"
myLast' [x] = x
myLast' (_:xs) = myLast xs

myLast'' = head . reverse
