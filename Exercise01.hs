module Exercise01 where


-- Exercise 1.1
-----------------------------------------------------------------------------------------------------------
-- You need to double the integer and return it.
-- Example: doubleInteger 2 -> 4
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

doubleInteger :: Integer -> Integer
doubleInteger x = x * 2

-- Exercise 1.2
-----------------------------------------------------------------------------------------------------------
-- Bob needs a fast way to calculate the volume of a cuboid with three values: 
-- the length,width and height of the cuboid. 
-- Write a function to help Bob with this calculation.
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

cuboidVolume :: Num a => a -> a -> a -> a
cuboidVolume l w h = l * w * h

-- Exercise 1.3
-----------------------------------------------------------------------------------------------------------
-- Implement a function which compares two numbers. 
-- If 2 numbers are equal, the result is True, otherwise False
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

numEquals :: Eq a => a -> a -> Bool
numEquals l r = l == r

-- Exercise 1.4
-----------------------------------------------------------------------------------------------------------
-- Implement a function which compares two numbers. 
-- If 2 numbers are different, the result is True, otherwise False
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

numNotEquals :: Eq a => a -> a -> Bool
numNotEquals l r = l /= r

-- Exercise 1.5
-----------------------------------------------------------------------------------------------------------
-- Implement a function which gives 2 numbers 
-- and the result is the addition of those 2 numbers
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

numAdd :: Num a => a -> a -> a
numAdd l r = l + r

-- Exercise 1.6
-----------------------------------------------------------------------------------------------------------
-- Implement a function which gives 2 numbers 
-- and the result is the subtraction of those 2 numbers
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

numSub :: Num a => a -> a -> a
numSub l r = l - r

-- Exercise 1.7
-----------------------------------------------------------------------------------------------------------
-- Implement a function which multiplies two numbers.
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

numProd :: Num a => a -> a -> a
numProd l r = l * r

-- Exercise 1.8
-----------------------------------------------------------------------------------------------------------
-- Implement a function which divide two numbers.
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

numQuo :: Fractional a => a -> a -> a
numQuo l r = l / r

-- Exercise 1.9
-----------------------------------------------------------------------------------------------------------
-- Implement a function which returns the next number
-- Example: 1 -> 2
-- 			6 -> 7
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

valueAfter :: Num a => a -> a
valueAfter n = n + 1

-- Exercise 1.10
-----------------------------------------------------------------------------------------------------------
-- Implement a function which returns the higher number from 2 numbers
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

higher :: Ord a => a -> a -> a
higher l r
  | l > r = l
  | otherwise = r

-- Exercise 1.11
-----------------------------------------------------------------------------------------------------------
-- Implement a function which returns the lower number from 2 numbers
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

lower :: Ord a => a -> a -> a
lower l r
  | l < r = l
  | otherwise = r

-- Exercise 1.12
-----------------------------------------------------------------------------------------------------------
-- Implement a function which divide 2 numbers and the result is an integer division
-- Example: 9 / 2 = 4
-- 			11 / 3 = 3
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

numQuoFlr :: RealFrac a => a -> a -> Integer
numQuoFlr l r = floor (numQuo l r)

-- Exercise 1.13
-----------------------------------------------------------------------------------------------------------
-- Implement a function which divide 2 numbers and the result is a modulo
-- Example: 9 modulo 2 = 1
-- 			13 modulo 5 = 3
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

numMod :: Integral a => a -> a -> a
numMod = mod

-- Exercise 1.14
-----------------------------------------------------------------------------------------------------------
-- Implement a function which check a number is an odd number or not
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

numIsOdd :: Integral a => a -> Bool
numIsOdd = odd

-- Exercise 1.15
-----------------------------------------------------------------------------------------------------------
-- Implement a function which check a number is an even number or not
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 1.16
-----------------------------------------------------------------------------------------------------------
-- Create a function that takes an integer as an argument 
-- and returns "Even" for even numbers or "Odd" for odd numbers.
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 1.17
-----------------------------------------------------------------------------------------------------------
-- Timmy & Sarah think they are in love, but around where they live, 
-- they will only know once they pick a flower each. 
-- If one of the flowers has an even number of petals 
-- and the other has an odd number of petals it means they are in love.
-- Write a function that will take the number of petals of each flower 
-- and return true if they are in love and false if they aren't.
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 1.18
-----------------------------------------------------------------------------------------------------------
-- Create a function that takes an integer and make it negative 
-- if it’s positive and make it positive if it’s negative
-- Example: (-1) -> 1
-- 			2 -> (-2)
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 1.19
-----------------------------------------------------------------------------------------------------------
-- Create a function that takes an integer and make it absolute
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 1.20
-----------------------------------------------------------------------------------------------------------
-- In this simple assignment you are given a number and have to make it negative. 
-- But maybe the number is already negative?
-- Examples
-- makeNegative 1 -- return -1 
-- makeNegative (-5) -- return -5 
-- makeNegative 0 -- return 0 
-- makeNegative 0.12 -- return -0.12
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

