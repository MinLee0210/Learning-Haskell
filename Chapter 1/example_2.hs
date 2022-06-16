calcChange owed given = if change > 0
                        then change
                        else 0
    where change = given - owed

doublePlusTwoX x = doubleX + 2
    where doubleX = x*2

f x = x^2

-- dubs = (\x -> x*2)
-- dobDob x = dubs x * 2

-- dobDob x = dubs * 2
--     where dubs = x*2

dubs = (\x -> x*2)
dobDob = (\x -> (dubs x) * 2)

collatzNum 1 = 1
collatzNum n = if (even n)
                then (n `div` 2)
                else (3*n + 1)

collatzSeq n = if(n == 1)
                then [1]
                else [n] ++ collatzSeq(collatzNum n)

-- body sumSquare squareSum = if sumSquare > squareSum
--                             then sumSquare
--                             else squareSum

-- body = (\sumSquare squareSum -> if sumSquare > squareSum
--                                 then sumSquare
--                                 else squareSum)
-- sumSquareOrsquareSum x y = body (x^2 + y^2) ((x + y) ^ 2)                    

sumSquareOrsquareSum x y = let  sumSquare = (x^2 + y^2)
                                squareSum = ((x + y) ^ 2)
                            in 
                                if sumSquare > squareSum
                                then sumSquare
                                else squareSum

x = 4
add1 y = y + x
add2 y = (\x -> y + x)3
add3 y = (\y -> (\y -> y + x)1)2