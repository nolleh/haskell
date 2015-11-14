--type Church = (a-> a) -> a -> a
zero = \s z -> z
one = \s z -> s z
two = \s-> s.s

add x y = \s z -> x s (y s z)

six = \s -> (s.s).(s.s).(s.s)

-- successor 가 c2i 의 숫자. (successor 를 몇번 적용하는가)
mul x y = \s z -> x (y s) z
--mul x y = \s z -> x . y

main = do
  print $ two (+1) 0
  print $ add two one (+1) 0
  print $ six (+1) $ two (+1) 0
  print $ mul one six (+1) 0