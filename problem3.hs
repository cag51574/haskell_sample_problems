--Find the kth element of a list. The first element is 1
--findKthElem [a] k = head . drop (k-1)

--findKthElem' [] _ = error "No kth element"
--findKthElem' a  k = a
--findKthElem' [a] k = take k [a]

findKthElem :: [a] -> Int -> a
findKthElem a k = a !! (k - 1)

findKthElem' :: [a] -> Int -> a 
findKthElem' a k = head $ drop (k-1) a
