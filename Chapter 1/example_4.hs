import Data.List

--Normal expression

-- ifEvenInc x = if even x
--               then x + 1
--               else x

-- ifEvenDouble x = if even x
--                  then x * 2
--                  else x

-- ifEvenSquare x = if even x
--                  then x ^ 2
--                  else x

--New way to evaluate fuction with nearly identical name

ifEven myFunc x = if even x
                  then myFunc x
                  else x

inc x = x + 1
double x = x*2
square x = x^2
cube x = x^3
negate x = x * (-1) 

ifEvenInc x = ifEven inc x
ifEvenDouble x = ifEven double x
ifEvenSquare x = ifEven square x
-- ifEvenCube x = ifEven cube x
-- ifEvenNegate x = ifEven negate x

--Using lambda argument
-- ifEvenCube = (\x -> ifEven cube x)
ifEvenCube = ifEven (\x -> x^3)

-- List
names = [("Ian", "Curtis"),
        ("Bernard","Sumner"),
        ("Peter", "Hook"),
        ("Stephen","Morris")]

compareLastNames name1 name2 =  if lastName1 > lastName2
                                then GT
                                else if lastName1 < lastName2
                                    then LT
                                        else if firstName1 > firstName2
                                            then GT
                                                else if firstName1 < firstName2
                                                    then LT
                                                    else EQ
    where   lastName1 = snd name1
            lastName2 = snd name2
            firstName1 = fst name1
            firstName2 = fst name2

sfOffice name = if lastName < "L"
                then nameText ++ " - PO Box 1234 - San Francisco, CA, 94111"
                else nameText ++ " - PO Box 1010 - San Francisco, CA, 94109"
    where   lastName = snd name
            nameText = (fst name) ++ " " ++ lastName

nyOffice name = nameText ++ "- PO Box 789 - New York, NY, 10013"
    where nameText = (fst name) ++ " " ++ (snd name)

renoOffice name = nameText ++ " - PO Box 456 - Reno, NV 89523"
    where nameText = snd name

getLocation location =  case location of
                        "ny" -> nyOffice
                        "sf" -> sfOffice
                        "reno" -> renoOffice
                        _ -> (\name -> (fst name) ++ " " ++ (snd name))

addressLetter name location = getLocationFunc name
    where getLocationFunc = getLocation location