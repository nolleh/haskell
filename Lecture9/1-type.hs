type Pair a = (a, a)
mult :: Pair Int -> Int
mult (m,n) = m*n

--type : synonym
type Pos = (Int, Int)
type Trans = Pos -> Pos

-- data : completely new type
data Bool = False | True
--try to understands, 
--abstract base class Bool, and False , 
--True is derived.. 

--type and constructor must begin with uppercase letter. 

data Answer = Yes | No | Unknown 

answers :: [Answer]
answers = [Yes, No, Unknown]

flip :: Answer -> Answer
flip Yes = No
flip No = Yes
flip Unknown = Unknown


data Shape = Circle Float | Rect Float Float
square :: Float -> Shape
square n = Rect n n
area :: Shape -> Float
area (Circle r) = pi * r^2
area (Rect x y) = x * y

-- viewed as consturctor
-- Circle :: Float -> Shape
--Rect :: Float -> Float -> Shape

main = do
  print $ mult (2,3)
  print $ area (Circle 3) -- 28.274334

