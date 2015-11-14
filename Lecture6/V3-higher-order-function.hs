
takewhile p [] = []
takewhile p (x:xs)
  | p x = x:takewhile p xs
  | otherwise = []

isAlpha = not . (== ' ')

main = do 
  print $ takewhile isAlpha "abc def"