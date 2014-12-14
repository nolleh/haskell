--part1. pattern matching
--main = print $ abs' 3
--main = print $ head' [1,2,3,4,5]

abs' :: Int -> Int
abs' n
  |	n >= 0    = n		
  |	otherwise = 0

head' :: [a] -> a
head' [] = error "empty"
head' (x:_) = x

--Part2.  
main = print $ halve [1,2,3,4,5,6]
--halve :: [a] -> ([a], [a])
halve xs = (take n xs, drop n xs)
	where n = length xs `div` 2