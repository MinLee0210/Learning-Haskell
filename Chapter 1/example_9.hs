-- HIGHER-ORDER FUNCTIONS

import Data.Char

add3ToAll [] = []
add3ToAll (x:xs) = (x + 3):(add3ToAll xs)

mult3ToAll [] = []
mult3ToAll (x:xs) = (x*3):(mult3ToAll xs)

addAnA [] = []
addAnA (x:xs) = ("A " ++ x):(addAnA xs)

squareAll [] = []
squareAll (x:xs) = (x^2):(squareAll xs)

myMap f [] = []
myMap f (x:xs) = (f x):(myMap f xs)

-- If test takes null list as an input, return the empty list, 
-- else, test takes a list as its parameter;
--         check if its first element sastify the test, if it does, 
--             takes it out, else
--             continue filtering the rest of the list

myFilter test [] = []
myFilter test (x:xs) = if test x
                        then x:myFilter test xs
                        else myFilter test xs

remove test [] = []
remote test (x:xs) = if test x
                    then remove test xs
                    else x:remove test xs

-- Folding list: foldl takes a list and reduces it to a single value. 
--                 It takes 3 arguments: a binary function, an inital value and a list. 
-- foldl stands for fold left, other version is fold right-foldr
product xs = foldl (*) 1 xs
add xs = foldl (+) 0 xs

concatenate xs = foldl (++) "" xs

sumOfSquare xs = foldl (+) 0 (map (^2) xs)

-- Reverse list
-- explain rcons: rcons has 2 parameter, it will put the second parameter to be the first element whenever it combines 
--                 with the first element. 
-- reverList will take a list, then use fold as an iteratively apply rcons to its 2 parameters
-- foldl return a list other than the original
rcons x y = y:x
reverseList xs = foldl rcons [] xs

-- The reason of foldl return a new list is, consider:
-- myFoldl is a function as a prototype of foldl, 
-- it contails f-as a binary function, init- as an intial value - and []-as a list
myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs
    where newInit = f init x

myFoldr f init [] = init
myFoldr f init (x:xs) = f x rightResult
    where rightResult = myFoldr f init xs

-- Exercise
-- Re-create elem function
containElem a aList = if length (filter (\x -> x== a) aList) > 0
                      then 1 == 1
                      else 1 == 0
                      
-- Recognize the palindrome in case of containing space
-- 1. Remove space 
-- 2. Create a list to contain its reverse
-- 3. Compare 2 list

-- PWS stands for palindrome with space
isPWS a = (preprocess a) == reverse (preprocess a)
    where preprocess a = map toLower (filter (\x -> x /= ' ') a)

-- Write harmonic function using lazy evaluation
fractionSeq [] = []
fractionSeq (x:xs) = (1/x):(fractionSeq xs)
harmonicSum n = foldl (+) 0 (fractionSeq (take n [1 ..]))
