-- CONTINUE LEARNING RECURSION

-- use :set +s to time function calls in GHCi


-- myLength [] = 0
-- myLength xs = 1 + myLength(tail xs) --tail is built-in function to get
--                                     --the tail of the list (the list that cut off the head)

-- Using pattern matching
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

-- Input 2 parameters: n (numbers of variable that want to take out)
--                     [] (an empty list to hold variables)
--     1. If not choose n, return empty list
--     2. If choose n as 0, return empty list
--     3. if n > 0:
--         1. Take the head of the input list to the hold-variable list
--         2. Do it recursively.
myTake _ [] = []
myTake 0 _ = []
myTake n (x:xs) = x:rest
    where rest = myTake (n-1) xs

-- The Ackermann function
ackermann 0 n = n +1
ackermann m 0 = ackermann (m-1) 1
ackermann m n = ackermann (m-1) (ackermann m (n-1))

-- The Collatz conjecture
collatz 1 = 1
collatz n = if even n
            then 1 + collatz (n`div`2)
            else 1 + collatz (n*3 + 1)

-- The Fibonacci number
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

-- Reverse list
reverseList [] = []
reverseList (x:xs) = (reverseList xs) ++ [x]