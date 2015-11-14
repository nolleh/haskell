foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' f v [] = v
foldr' f v (x:xs) = f x (foldr' f v xs)

sum' = foldr' (+) 0
--foldr (+) 0 [1,2,3]
--foldr (+) 0 (1:(2:(3:[])))
--foldr (1+(2+(3+0)))

--and' = foldr (&&) True
length' = foldr' (\_ n -> 1+n) 0

reverse' = foldr' (\x n -> n ++ [x]) []

main = do 
  print $ sum' [1,2,3]
  print $ length' [1,2,3]
  print $ reverse' [1,2,3]
  --print $ and' [True, True]