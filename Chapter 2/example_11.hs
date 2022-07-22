-- Haskell is a statically typed language. Normally, a statically typed language has to mentioned (by hand) variables' type 
-- before assigning name for the variable. However, Haskell does not follow the normal. Haskell uses type inference to
-- automatically determined the types of all values at compile time based on the way they're used. In other words, Haskell 
-- has done the 'type acknowledge process' automatically. 

-- Type basics:
--     Now, we should know how to call types in Haskell. In this chapter, we mainly focus on some 
--     basic types such as Int, String and Double.

x :: Int
x = 200

-- If we try x^2000, the return value will be 0. This is because the result is out of the Int's scope. 
-- Int represents how the computer is to interpret a number represented by a fixed number of bits, often 32 or 64 bits.
-- We type (minBound, maxBound) :: (Int, Int) to see the scope of type Int. 

-- Haskell also support the type of Integer, which is the same like Int but it is not bounded. 
-- Integer is arbitrary precision integers, with range as large as you have memory for.
-- Note: new term 'arbitrary precision integer' 

-- To check the difference between Int and Integer, typed this line (12345678901234567890 :: Integer, 12345678901234567890 :: Int)

y :: Integer
y = 2

letter :: Char
letter = 'a'

interestRate :: Double
interestRate = 0.375

isFun :: Bool
isFun = True

-- List
values :: [Int]
values = [1, 2, 3]

testScores :: [Double]
testScores = [0.99, 0.73, 0.21]

letters :: [Char]
letters = ['a', 'b', 'c']

-- In Haskell, [Char] is considered same as String