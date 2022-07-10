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
-- human (name, age, gender) = \message -> message (name, age, gender)

-- aMale = human("A", 21, "Male")
-- aFemale = human("B", 22, "Female")

-- -- Making a helper function: allows to easily work with parameters. 
-- name (n, _, _) = n
-- age (_, a, _) = a
-- gender (_, _, g) = g 

-- getName aHuman = aHuman name
-- getAge aHuman = aHuman age
-- getGender aHuman = aHuman gender

-- setName aHuman newName = aHuman (\(n, a, g) -> human (newName, a, g))
-- setAge aHuman newAge = aHuman (\(n, a, g) -> human (n, newAge, g))
-- setGender aHuman newGender = aHuman (\(n, a, g) -> human (n, a, newGender))

-- displayInfo aHuman = aHuman (\(n, a, g) -> "Name: " ++ (show n) ++ " " ++
--                                             "Age: " ++ (show a) ++ " " ++
--                                             "Gender: " ++ (show g))

-- -- aAgeBender = setAge aFemale 18
-- -- aGenderBender = setGender aFemale "Male"

-- -- Make some arbitrary functions
-- -- Changing name

-- changeName aHuman newName = aHuman (\(n, a, g) -> human (newName, a, g))

-- afterChange = changeName aMale "Le Duc Minh"

-- Example of OOP about a robot

robot (name, attack, hp) = \message -> message (name, attack, hp)

killerRobot = robot ("Kill3r", 25, 200)

-- Helper function
name (n, _, _) = n
attack (_, a, _) = a
hp (_, _, h) = h

-- Get method
getName aRobot = aRobot name
getAttack aRobot = aRobot attack
getHP aRobot = aRobot hp

-- Set method
setName aRobot newName = aRobot (\(n, a, h) -> robot (newName, a, h))
setAttack aRobot newAttack = aRobot (\(n, a, h) -> robot (n, newAttack, h))
setHP aRobot newHP = (\(n, a, h) -> robot (n, a, newHP))

-- Prototype: create an instance of objects by modifying a prototypical object
nicerRobot = setName killerRobot "Kitty"
gentleRobot = setAttack killerRobot 5
softerRobot = setHP killerRobot 50

printRobot aRobot = aRobot (\(n, a, h) -> n ++ 
                                          " attack: " ++ (show a) ++ 
                                          " hp: " ++ (show h))

printList aList = map printRobot aList         

damage aRobot attackDamage = aRobot (\(n, a, h) -> robot (n, a, h - attackDamage))

afterHit = damage killerRobot 90

fight aRobot defender = damage defender attack 
      where attack = if getHP aRobot > 10
                  then getAttack aRobot  
                  else 0

gentleGiant = robot ("Mr.BigG", 10, 300)

gentleGiantRound1 = fight killerRobot gentleGiant
killerRobotRound1 = fight gentleGiant killerRobot
gentleGiantRound2 = fight killerRobotRound1 gentleGiantRound1
killerRobotRound2 = fight gentleGiantRound1 killerRobotRound1
gentleGiantRound3 = fight killerRobotRound2 gentleGiantRound2
killerRobotRound3 = fight gentleGiantRound2 killerRobotRound2

fastRobot = robot ("SpeedyRob", 15, 40)
slowRobot = robot ("slowBo", 20, 30)

-- fastRobotRound1 = fight slowRobot fastRobot
-- slowRobotRound1 = fight fastRobot slowRobot
-- fastRobotRound2 = fight slowRobotRound1 fastRobotRound1
-- slowRobotRound2 = fight fastRobotRound1 slowRobotRound1
-- fastRobotRound3 = fight slowRobotRound2 fastRobotRound2
-- slowRobotRound3 = fight fastRobotRound2 slowRobotRound2

slowRobotRound1 = fight fastRobot slowRobot
fastRobotRound1 = fight slowRobotRound1 fastRobot
slowRobotRound2 = fight fastRobotRound1 slowRobotRound1
fastRobotRound2 = fight fastRobotRound1 slowRobotRound1
slowRobotRound3 = fight fastRobotRound2 slowRobotRound2
fastRobotRound3 = fight slowRobotRound3 fastRobotRound2

-- Note that the order of the above functions is not a considerable problem to Haskell
-- Note that Haskell is not an OO-language, however, we can design a function to act like an Object