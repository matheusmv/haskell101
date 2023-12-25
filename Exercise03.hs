module Exercise03 where

import Data.Char (isUpper)

-- Exercise 3.1
-----------------------------------------------------------------------------------------------------------
-- Implement a function which create a string of “hello” 10 times
-- Example: “hello hello hello hello …..”
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

hello10 :: String
hello10 = unwords $ replicate 10 "hello"

-- Exercise 3.2
-----------------------------------------------------------------------------------------------------------
-- Convert the expression {2 * x | x ∈ N, x ≤ 10} to a function of Haskell
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

naturalsLeq10 :: [Integer]
naturalsLeq10 = map (* 2) $ takeWhile (<= 10) [0 ..]

-- Exercise 3.3
-----------------------------------------------------------------------------------------------------------
-- In the list of Exercise 3.2 we want only the elements 
-- which after being doubled, are greater than or equal to 12
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

filterGe12 :: [Integer]
filterGe12 = filter (>= 12) naturalsLeq10

-- Exercise 3.4
-----------------------------------------------------------------------------------------------------------
-- Implement a function which get all numbers from 50 to 100 
-- whose remainder when divided by 7 is 3
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

range50To100Mod7Eq3 :: [Integer]
range50To100Mod7Eq3 = filter (\x -> x `mod` 7 == 3) [x | x <- [50 .. 100]]

-- Exercise 3.5
-----------------------------------------------------------------------------------------------------------
-- Implement a function which replace every odd number greater than 10 with "BANG!", 
-- and every odd number less than 10 with "BOOM!". 
-- If a number isn’t odd, we throw it out of our list
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

buildBangBoomList :: Integral a => [a] -> [String]
buildBangBoomList = map (\n -> if n > 10 then "BANG!" else "BOOM!") . filter odd

-- Exercise 3.6
-----------------------------------------------------------------------------------------------------------
-- Implement a function which create a list with all numbers 
-- from 10 to 20 that are not 13, 15 or 19
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

allNumbersFrom10To20WithFilter :: [Integer]
allNumbersFrom10To20WithFilter = [x | x <- [10 .. 20], x `notElem` [13, 15, 19]]

-- Exercise 3.7
-----------------------------------------------------------------------------------------------------------
-- Implement a function which draw values from 2 lists 
-- and get the products of all possible combinations that are more than 50
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

take2ListsCombProdAndFilter :: (Ord a, Num a) => [a] -> [a] -> [a]
take2ListsCombProdAndFilter xs ys = filter (> 50) [x * y | x <- xs, y <- ys]

-- Exercise 3.8
-----------------------------------------------------------------------------------------------------------
-- Implement a function which draw values from 2 lists 
-- and get the products of all possible combinations of numbers in those lists
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

take2ListsCombAndProd :: Num a => [a] -> [a] -> [a]
take2ListsCombAndProd xs ys = [x * y | x <- xs, y <- ys]

-- Exercise 3.9
-----------------------------------------------------------------------------------------------------------
-- Implement a function which make a list comprehension 
-- that combines a list of adjectives and a list of nouns
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

combAdjsAndNouns :: [String] -> [String] -> [String]
combAdjsAndNouns xs ys = [unwords [x, y] | x <- xs, y <- ys]

-- Exercise 3.10
-----------------------------------------------------------------------------------------------------------
-- Using list comprehensions to write our own version of the length function
-- We’ll call it length1
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

length1 :: Num a => [t] -> a
length1 xs = sum [1 | _ <- xs]

-- Exercise 3.11
-----------------------------------------------------------------------------------------------------------
-- Implement a function which takes a string and removes all the lowercase letters
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

takeAllUpperCase :: String -> String
takeAllUpperCase = filter isUpper

-- Exercise 3.12
-----------------------------------------------------------------------------------------------------------
-- Implement a function which remove the spaces from the string, 
-- then return the resultant string.
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

removeAllSpaces :: String -> String
removeAllSpaces = filter (/= ' ')

-- Exercise 3.13
-----------------------------------------------------------------------------------------------------------
-- Implement a function which caculate factorial 
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 3.14
-----------------------------------------------------------------------------------------------------------
-- Implement a function which calculate the circumference of a circle
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 3.15
-----------------------------------------------------------------------------------------------------------
-- Implement a function which compares 2 numbers.
-- f a b => a > b -> GT (Greater Than)
-- 			a < b -> LT (Lesser Than)
--			a = b -> EQ (Equal)
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 3.16
-----------------------------------------------------------------------------------------------------------
-- Implement a function which can transform a string into a number
-- Examples: "1234" --> 1234 
-- 			 "605" --> 605 
--			 "1405" --> 1405 
-- 			 "-7" --> -7
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 3.17
-----------------------------------------------------------------------------------------------------------
-- Create a function that takes 2 integers in form of a string as an input, and outputs the sum (also as a string):
-- Example: (Input1, Input2 -->Output)
-- 			"4", "5" --> "9" 
--			"34", "5" --> "39" 
--			"", "" --> "0" 
--			"2", "" --> "2" 
--			"-5", "3" --> "-2"
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 3.18
-----------------------------------------------------------------------------------------------------------
-- Make a function that will return a greeting statement that uses an input; 
-- your program should return, "Hello, <name> how are you doing today?".
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 3.19
-----------------------------------------------------------------------------------------------------------
-- You get an array of numbers, return the sum of all of the positives ones.
-- Example: [1,-4,7,12] => 1 + 7 + 12 = 20
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 3.20
-----------------------------------------------------------------------------------------------------------
-- Complete the function that takes a non-negative integer n as input, 
-- and returns a list of all the powers of 2 
-- with the exponent ranging from 0 to n
-- Examples: n = 0 ==> [1] # [2^0] 
-- 			 n = 1 ==> [1, 2] # [2^0, 2^1] 
--			 n = 2 ==> [1, 2, 4] # [2^0, 2^1, 2^2]
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


