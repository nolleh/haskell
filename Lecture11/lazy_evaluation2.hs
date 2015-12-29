-- prime

-- 1. Write down the list 2,3,4 .. 
-- 2. Mark the first value p in the list as prime
-- 3. delete all multiples of p from the list 
-- 4. return to step 2


primes :: [Int]
primes = sieve [2..]

sieve :: [Int] -> [Int]
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]

main = do
  print $ take 1000 primes