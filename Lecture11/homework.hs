mult = (\x -> (\y-> x * y))

fibs :: [Integer]
fibs = 0:1:[x + y | (x, y) <- zip fibs (tail fibs)]
-- 0:1:([0,1]:fibs`, 1:fibs`)
-- 0:1:(0 + 1):...


-- fibs':: [Integer]
-- fibs' = 0:1:[x + y | (x, y) <- zip (fibs' tail) fibs' ]

fib n = head (drop (n-1) fibs)
fib' n = last (take n fibs)
fib'' n = fibs !! n
main = do
  print $ mult 3 4
  -- x -> 첫번째 인자... (outermost)
  print $ take 10 fibs
  print $ fib'' 3
