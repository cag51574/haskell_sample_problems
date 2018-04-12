--Find the second to last element in a list
secondToLast :: [a] -> a
secondToLast [] = error "No last element in empty list"
secondToLast = head . drop 1 . reverse 
 
secondToLast2 :: [a] -> a
secondToLast2 = last . init

secondToLastSafe1 :: Foldable f => f a -> a
secondToLastSafe1  = fst . foldl (\(a,b) x -> (b,x)) (err1,err2)
  where 
    err1 = error "Empty List"
    err2 = error "Singleton"

secondToLastSafe2 :: Foldable f => f a -> Maybe a
secondToLastSafe2  = fst . foldl (\(a,b) x -> (b, Just x)) (Nothing,Nothing)


secondToLast' :: [a] -> a
secondToLast' [] = []
secondToLast' = head . drop 1 . reverse
