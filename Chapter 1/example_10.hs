-- FUNCTIONAL OOP WITH ROBOTS

cup f10z = \message -> message f10z

getOz aCup = aCup (\f10z -> f10z)

coffeeCup = cup 12

-- This funtion allows the coffee in cup reach a negative number
-- drink aCup ozDrank = cup (f10z - ozDrank)
--     where f10z = getOz aCup

drink aCup ozDrank = if ozDiff >= 0
                    then cup ozDiff
                    else cup 0
    where f10z = getOz aCup
          ozDiff = f10z - ozDrank

isEmpty aCup = getOz aCup == 0


-- Now, we will build an object with some basic properties such as name, its characteristics and a function to represent those
human (name, age, gender) = \message -> message (name, age, gender)

aMale = human("A", 21, "Male")
aFemale = human("B", 22, "Female")

-- Making a helper function: allows to easily work with parameters. 
name (n, _, _) = n
age (_, a, _) = a
gender (_, _, g) = g 

getName aHuman = aHuman name
getAge aHuman = aHuman age
getGender aHuman = aHuman gender

setName aHuman newName = aHuman (\(n, a, g) -> human (newName, a, g))
setAge aHuman newAge = aHuman (\(n, a, g) -> human (n, newAge, g))
setGender aHuman newGender = aHuman (\(n, a, g) -> human (n, a, newGender))

displayInfo aHuman = aHuman (\(n, a, g) -> "Name: " ++ (show n) ++ " " ++
                                            "Age: " ++ (show a) ++ " " ++
                                            "Gender: " ++ (show g))

-- aAgeBender = setAge aFemale 18
-- aGenderBender = setGender aFemale "Male"

-- Make some arbitrary functions
-- Changing name

changeName aHuman newName = aHuman (\(n, a, g) -> human (newName, a, g))

afterChange = changeName aMale "Le Duc Minh"