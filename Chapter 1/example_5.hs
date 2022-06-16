-- Closure functions

ifEven f x = if even x
                  then f x
                  else x

inc x = x + 1
double x = x*2
square x = x^2
cube x = x^3
negate x = x * (-1) 

-- ifEvenInc x = ifEven inc x
-- ifEvenDouble x = ifEven double x
-- ifEvenSquare x = ifEven square x
-- ifEvenCube x = ifEven cube x
-- ifEvenNegate x = ifEven negate x

--Using lambda argument
-- ifEvenCube = (\x -> ifEven cube x)
ifEvenCube = ifEven (\x -> x^3)

genIfEven f = (\x -> ifEven f x)

ifEvenInc = genIfEven inc

-- genIfEven x = (\f -> ifEven f x)

-- ifEvenInc x = (genIfEven x) inc
