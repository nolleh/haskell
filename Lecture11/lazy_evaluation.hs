-- Lazy Evaluation

-- What distinguishes Haskell from other languages with higher-order functions 
-- is that Haskell uses lazy evaluation to evalute expressions. 
-- We start by reviewing the notion of evaluation, consider various evaluation strategies, 
-- discuss infinite structures and modular programming, 
-- and conclude by showing that often strict evaluation is rather handy 
-- when you want to write performant code.


-- 1.
square n = n * n
square (3 + 4)
= squrare (7)
-- 2.
square n = n * n
square (3 + 4)
(3 + 4) * (3 + 4)
--  >> same result. when terminate.. and no sideeffect

loop = tail loop
fst (1, loop)

-- innermost redex
fst (1, (tail loop))
fst (1, (tail (tail loop))) ...
-- not terminate 

-- outer most redex
fst (1, loop)
1
-- no need to see futher
-- but as you can see on square example, there can be more steps for outermost redex

-- SO, MORE EFFICIENTLY, make to share
-- Lazy Expression = outermost redex + sharing

 
