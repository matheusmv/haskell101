module Exercise05 where

import Data.Char (chr, isUpper, toLower, toUpper)

-- Exercise 5.1
-----------------------------------------------------------------------------------------------------------
-- Implement a function which lowercase letter becomes uppercase 
-- and each uppercase letter becomes lowercase. 

-- For example:
-- toAlternatingCase "hello world" `shouldBe` "HELLO WORLD"
-- toAlternatingCase "HELLO WORLD" `shouldBe` "hello world"
-- toAlternatingCase "hello WORLD" `shouldBe` "HELLO world"
-- toAlternatingCase "HeLLo WoRLD" `shouldBe` "hEllO wOrld"
-- toAlternatingCase "12345"       `shouldBe` "12345"
-- toAlternatingCase "1a2b3c4d5e"  `shouldBe` "1A2B3C4D5E"
-- As usual, your function/method should be pure, i.e. it should not mutate the original string.
-----------------------------------------------------------------------------------------------------------



-- Coding here

toAlternatingCase :: String -> String
toAlternatingCase = map alternate'
  where
    alternate' c
      | isUpper c = toLower c
      | otherwise = toUpper c

-- Exercise 5.2
-----------------------------------------------------------------------------------------------------------
-- Write a function called repeatStr which repeats the given string string exactly n times.

-- repeatStr(6, "I") // "IIIIII"
-- repeatStr(5, "Hello") // "HelloHelloHelloHelloHello"
-----------------------------------------------------------------------------------------------------------



-- Coding here

repeatStr :: Int -> String -> String
repeatStr n str = take n $ cycle str

-- Exercise 5.3
-----------------------------------------------------------------------------------------------------------
-- We need a function that can transform a number into a string.
-- Examples:
--          123 --> "123"
--          999 --> "999"
-----------------------------------------------------------------------------------------------------------



-- Coding here

numToSrt :: (Show a) => a -> String
numToSrt = show

-- Exercise 5.4
-----------------------------------------------------------------------------------------------------------
-- Find the sum of all multiples of n below m

-- Keep in Mind
-- n and m are natural numbers (positive integers)
-- m is excluded from the multiples
-- Examples:
--          sumMul(2, 9)   ==> 2 + 4 + 6 + 8 = 20
--          sumMul(3, 13)  ==> 3 + 6 + 9 + 12 = 30
--          sumMul(4, 123) ==> 4 + 8 + 12 + ... = 1860
--          sumMul(4, -7)  ==> "INVALID"
-----------------------------------------------------------------------------------------------------------



-- Coding here

sumMul :: Integral b => b -> b -> Either String b
sumMul n m
  | natPos n && natPos m = Right $ sum [x | x <- [n .. m - 1], x `mod` n == 0]
  | otherwise = Left "INVALID"
  where
    natPos n' = n' > 0

-- Exercise 5.5
-----------------------------------------------------------------------------------------------------------
-- Complete the solution so that it reverses all of the words within the string passed in.

-- Example:

-- "The greatest victory is that which requires no battle" 
-- --> "battle no requires which that is victory greatest The"
-----------------------------------------------------------------------------------------------------------



-- Coding here

reverseAllWords :: String -> String
reverseAllWords str = unwords $ reverse $ words str

-- Exercise 5.6
-----------------------------------------------------------------------------------------------------------
-- Create a function that checks if a number n is divisible by two numbers x AND y. 
-- All inputs are positive, non-zero digits.
-- Examples:
--          1) n =   3, x = 1, y = 3 =>  true because   3 is divisible by 1 and 3
--          2) n =  12, x = 2, y = 6 =>  true because  12 is divisible by 2 and 6
--          3) n = 100, x = 5, y = 3 => false because 100 is not divisible by 3
--          4) n =  12, x = 7, y = 5 => false because  12 is neither divisible by 7 nor 5
-----------------------------------------------------------------------------------------------------------



-- Coding here

isDivisible :: Integral a => a -> a -> a -> Bool
isDivisible n x y =
  let z = x * y
   in n `mod` z == 0

-- Exercise 5.7
-----------------------------------------------------------------------------------------------------------
-- You need to check the provided list (x) for good ideas 'good' and bad ideas 'bad'. 
-- If there are one or two good ideas, return 'Publish!', 
-- if there are more than 2 return 'I smell a series!'. 
-- If there are no good ideas, as is often the case, return 'Fail!'.
-----------------------------------------------------------------------------------------------------------



-- Coding here

checkIdeas :: [String] -> String
checkIdeas xs
  | goodIdeas == 0 = "Fail!"
  | goodIdeas <= 2 = "Publish!"
  | otherwise = "I smell a series"
  where
    goodIdeas = length $ filter (== "good") xs

-- Exercise 5.8
-----------------------------------------------------------------------------------------------------------
-- Your goal is to create a function that removes the first and last characters of a string. 
-- You're given one parameter, the original string. 
-- You don't have to worry with strings with less than two characters.
-----------------------------------------------------------------------------------------------------------



-- Coding here

removeFirstAndLast :: String -> String
removeFirstAndLast (_ : xs@(_ : _)) = init xs
removeFirstAndLast _ = ""

-- Exercise 5.9
-----------------------------------------------------------------------------------------------------------
-- Our football team finished the championship. The result of each match look like "x:y". 
-- Results of all matches are recorded in the collection.

-- For example: ["3:1", "2:2", "0:1", ...]

-- Write a function that takes such collection and counts the points of our team in the championship. 
-- Rules for counting points for each match:

-- if x > y: 3 points
-- if x < y: 0 point
-- if x = y: 1 point
-- Notes:

-- there are 10 matches in the championship
-- 0 <= x <= 4
-- 0 <= y <= 4
-----------------------------------------------------------------------------------------------------------



-- Coding here

countPoints :: (Foldable t, Num a) => t String -> a
countPoints = foldl (\acc match -> acc + parseMatch match) 0
  where
    parseMatch match =
      case match of
        (x : ':' : y : _) ->
          case compare x y of
            GT -> 3
            LT -> 0
            EQ -> 1
        _ -> error "Invalid match format"

-- Exercise 5.10
-----------------------------------------------------------------------------------------------------------
-- Remove all exclamation marks from sentence but ensure a exclamation mark at the end of string. 
-- You can assume that the input data is always a non empty string, no need to verify it.

-- Examples:
--          remove("Hi!") === "Hi!"
--          remove("Hi!!!") === "Hi!"
--          remove("!Hi") === "Hi!"
--          remove("!Hi!") === "Hi!"
--          remove("Hi! Hi!") === "Hi Hi!"
--          remove("Hi") === "Hi!"
-----------------------------------------------------------------------------------------------------------



-- Coding here

remove :: String -> String
remove str = filter (/= '!') str ++ "!"

-- Exercise 5.11
-----------------------------------------------------------------------------------------------------------
-- Write a function to convert a name into initials. 
-- takes two words with one space in between them.
-- The output should be two capital letters with a dot separating them.

--It should look like this:
-- Sam Harris => S.H
-- Patrick Feeney => P.F
-----------------------------------------------------------------------------------------------------------



-- Coding here

initials :: String -> String
initials name = case words name of
  (firstName : lastName : _) -> [head firstName] ++ "." ++ [head lastName]
  _ -> error "invalid name format"

-- Exercise 5.12
-----------------------------------------------------------------------------------------------------------
-- Write a function findNeedle() that takes an array full of junk but containing one "needle"
-- After your function finds the needle it should return a message (as a string) that says:
-- "found the needle at position " plus the index it found the needle, so:

-- findNeedle ["hay", "junk", "hay", "hay", "moreJunk", "needle", "randomJunk"]
-- should return "found the needle at position 5"
-----------------------------------------------------------------------------------------------------------



-- Coding here

findNeedle :: [String] -> String
findNeedle xs = find' xs 0
  where
    find' :: [String] -> Integer -> String
    find' [] _ = "not found"
    find' (x : xs') pos
      | x == "needle" = "found the needle at position " ++ show pos
      | otherwise = find' xs' (pos + 1)

-- Exercise 5.13
-----------------------------------------------------------------------------------------------------------
-- Build a function that returns an array of integers from n to 1 where n>0.

-- Example : n=5 --> [5,4,3,2,1]
-----------------------------------------------------------------------------------------------------------



-- Coding here

intsNto1 :: (Num a, Enum a) => a -> [a]
intsNto1 n = foldl (flip (:)) [] [1 .. n]

-- Exercise 5.14
-----------------------------------------------------------------------------------------------------------
-- Complete the solution so that it reverses the string passed into it.

-- 'world'  =>  'dlrow'
-- 'word'   =>  'drow'
-----------------------------------------------------------------------------------------------------------



-- Coding here

reverseStr :: String -> String
reverseStr = reverse

-- Exercise 5.15
-----------------------------------------------------------------------------------------------------------
-- Write a function get_char() / getChar() which takes a number and returns the corresponding ASCII char for that value.

-- Example:
-- get_char(65)
-- should return:
-- 'A'
-- For ASCII table, you can refer to http://www.asciitable.com/
-----------------------------------------------------------------------------------------------------------



-- Coding here

get_char :: Int -> Char
get_char = chr

-- Exercise 5.16
-----------------------------------------------------------------------------------------------------------
-- Create a function called shortcut to remove the lowercase vowels (a, e, i, o, u ) in a given string.

-- Examples:
--          "hello"     -->  "hll"
--          "codewars"  -->  "cdwrs"
--          "goodbye"   -->  "gdby"
--          "HELLO"     -->  "HELLO"
--          don't worry about uppercase vowels
--          y is not considered a vowel
-----------------------------------------------------------------------------------------------------------



-- Coding here

removeVowels :: String -> String
removeVowels = rv
  where
    rv :: String -> String
    rv = filter (\c -> c `notElem` ['a', 'e', 'i', 'o', 'u'])

-- Exercise 5.17
-----------------------------------------------------------------------------------------------------------
-- Given a string of digits, you should replace any digit below 5 with '0' 
-- and any digit 5 and above with '1'. Return the resulting string.

-- Note: input will never be an empty string
-----------------------------------------------------------------------------------------------------------



-- Coding here

replaceDigits :: String -> String
replaceDigits str = replace' str ""
  where
    replace' "" acc = acc
    replace' (x : xs) acc
      | x < '5' = '0' : replace' xs acc
      | otherwise = '1' : replace' xs acc

-- Exercise 5.18
-----------------------------------------------------------------------------------------------------------
-- You will be given the high street price (normPrice),
-- the duty free discount (discount) 
-- and the cost of the holiday.

-- For example, if a bottle cost £10 normally and the discount in duty free was 10%, 
-- you would save £1 per bottle. If your holiday cost £500, the answer you should return would be 500.

-- All inputs will be integers. Please return an integer. Round down.
-----------------------------------------------------------------------------------------------------------



-- Coding here



-- Exercise 5.19
-----------------------------------------------------------------------------------------------------------
-- Write a function which converts the input string to uppercase.
-----------------------------------------------------------------------------------------------------------



-- Coding here

toUpperCase :: String -> String
toUpperCase = map toUpper

-- Exercise 5.20
-----------------------------------------------------------------------------------------------------------
-- This function should test if the factor is a factor of base.

-- Return true if it is a factor or false if it is not.

-- About factors
-- Factors are numbers you can multiply together to get another number.

-- 2 and 3 are factors of 6 because: 2 * 3 = 6

-- You can find a factor by dividing numbers. If the remainder is 0 then the number is a factor.
-- You can use the mod operator (%) in most languages to check for a remainder
-- For example 2 is not a factor of 7 because: 7 % 2 = 1

-- Note: base is a non-negative number, factor is a positive number.
-----------------------------------------------------------------------------------------------------------



-- Coding here

isFactor :: Integral a => a -> a -> Bool
isFactor n b = b `mod` n == 0
