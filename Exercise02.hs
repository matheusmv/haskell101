module Exercise02 where


-- Exercise 2.1
-----------------------------------------------------------------------------------------------------------
-- Implement a function which connect 2 lists or 2 strings
-- Example: “hello” “ world” -> “hello world”
-- 			[1,2,3] [4,5,6] -> [1,2,3,4,5,6]
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

connect :: [a] -> [a] -> [a]
connect l r = l ++ r

-- Exercise 2.2
-----------------------------------------------------------------------------------------------------------
-- Implement a function which add 1 element to the head of a list
-- Example: ‘A’ “ Car” -> “A Car”
--			 1 [2,3,4,5] -> [1,2,3,4,5]
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

addFirst :: a -> [a] -> [a]
addFirst v xs = v : xs

-- Exercise 2.3
-----------------------------------------------------------------------------------------------------------
-- Implement a function which get an element of a list by index
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

elementAt :: [a] -> Integer -> a
elementAt [] _ = error "invalid operation"
elementAt (x : _) 0 = x
elementAt (_ : xs) i = elementAt xs (i - 1)

-- Exercise 2.4
-----------------------------------------------------------------------------------------------------------
-- Complete the function that takes two integers (a, b, where a < b) 
-- and return an array of all integers between the input parameters, including them.
-- For example: a = 1 b = 4 --> [1, 2, 3, 4]
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

arrayInRange :: Integer -> Integer -> [Integer]
arrayInRange a b = [x | x <- [a .. b]]

-- Exercise 2.5
-----------------------------------------------------------------------------------------------------------
-- Implement a function which takes a list and returns its head, or first element
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

getFirst :: [a] -> a
getFirst [] = error "invalid operation"
getFirst (x : _) = x

-- Exercise 2.6
-----------------------------------------------------------------------------------------------------------
-- Implement a function which takes a list and returns its tail. 
-- In other words, it chops off a list’s head
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

getTail :: [a] -> [a]
getTail [] = error "invalid operation"
getTail (_ : xs) = xs

-- Exercise 2.7
-----------------------------------------------------------------------------------------------------------
-- Implement a function which takes a list and returns a list’s last element
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

getLast :: [a] -> a
getLast [] = error "invalid operation"
getLast [x] = x
getLast (_ : xs) = getLast xs

-- Exercise 2.8
-----------------------------------------------------------------------------------------------------------
-- Implement a function which takes a list 
-- and returns everything except its last element
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

discardLast :: [a] -> [a]
discardLast [] = error "invalid operation"
discardLast [_] = []
discardLast (x : xs) = x : discardLast xs

-- Exercise 2.9
-----------------------------------------------------------------------------------------------------------
-- Implement a function which takes a list 
-- and returns its length (the number of element in the list)
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

listLen :: [a] -> Integer
listLen xs = len xs 0
  where
    len [] acc = acc
    len (_ : ys) acc = len ys (acc + 1)

-- Exercise 2.10
-----------------------------------------------------------------------------------------------------------
-- Implement a function which checks if a list is empty
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

listEmpty :: [a] -> Bool
listEmpty [] = True
listEmpty _ = False

-- Exercise 2.11
-----------------------------------------------------------------------------------------------------------
-- Implement a function which reverses a list
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

listReverse :: [a] -> [a]
listReverse xs = reverse' xs []
  where
    reverse' [] acc = acc
    reverse' (x' : xs') acc = reverse' xs' (x' : acc)

-- Exercise 2.12
-----------------------------------------------------------------------------------------------------------
-- Implement a function which takes a number and a list. 
-- It extracts the specified number elements from the beginning of the list
-- Example: 3 [5,4,3,2,1] -> [5,4,3]
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

takeN :: Integer -> [a] -> [a]
takeN n xs = take' xs n []
  where
    take' [] _ acc = listReverse acc
    take' _ 0 acc = listReverse acc
    take' (x' : xs') n' acc = take' xs' (n' - 1) (x' : acc)

-- Exercise 2.13
-----------------------------------------------------------------------------------------------------------
-- Implement a function which takes a number and a list. 
-- It drops (at most) the specified number of elements from the beginning of a list
-- Example: 3 [5,4,3,2,1] -> [2,1]
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

dropN :: Integer -> [a] -> [a]
dropN _ [] = []
dropN 0 xs = xs
dropN n (_ : xs) = dropN (n - 1) xs

-- Exercise 2.14
-----------------------------------------------------------------------------------------------------------
-- Implement a function which takes a list of items 
-- that can be put in some kind of order and returns the largest element
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

getMax :: Ord a => [a] -> a
getMax [] = error "invalid operation"
getMax (x : xs) = getMax' xs x
  where
    getMax' [] maxValue = maxValue
    getMax' (x' : xs') maxValue
      | x' > maxValue = getMax' xs' x'
      | otherwise = getMax' xs' maxValue

-- Exercise 2.15
-----------------------------------------------------------------------------------------------------------
-- Implement a function which takes a list of items 
-- that can be put in some kind of order and returns the smallest element
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

getMin :: Ord a => [a] -> a
getMin [] = error "invalid operation"
getMin (x : xs) = getMin' xs x
  where
    getMin' [] minValue = minValue
    getMin' (x' : xs') minValue
      | x' < minValue = getMin' xs' x'
      | otherwise = getMin' xs' minValue

-- Exercise 2.16
-----------------------------------------------------------------------------------------------------------
-- Implement a function which takes a list of numbers and returns their sum
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 2.17
-----------------------------------------------------------------------------------------------------------
-- Implement a function which takes a list of numbers and returns their product
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 2.18
-----------------------------------------------------------------------------------------------------------
-- Implement a function which takes an item and a list of items 
-- and tells us if that item is an element of the list
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 2.19
-----------------------------------------------------------------------------------------------------------
-- Implement a function which create a list of all alphabet from a to z
-----------------------------------------------------------------------------------------------------------


-- "Coding here"


-- Exercise 2.20
-----------------------------------------------------------------------------------------------------------
-- Implement a function which create a list of all even numbers from 2 to 50
-----------------------------------------------------------------------------------------------------------


-- "Coding here"

