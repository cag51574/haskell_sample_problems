--encode the data
import Data.List
encode :: Eq a => [a] -> [(Int,a)]
encode [] = []
encode xs = map (\x -> (length x, head x)) (group xs)

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = let (first,rest) = span (==x) xs
                 in (x:first) : pack rest
