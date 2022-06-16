simple x = x 
longList = [1 .. ]
stillLongList = simple longList 
backwardLongList = reverse longList

-- Working on exampleList
exampleList = [1 .. 10]

accessIndex = (\x -> exampleList !! x)
accessIndex_v2 = (\x -> (!!) exampleList x)

getLength = length exampleList
getReverse = reverse exampleList
isInList = (\x -> elem x exampleList)
take_n_element_in_list = (\x -> take x exampleList)
take_n_last_in_list = (\x -> take x (reverse exampleList))
remove_n_element_from_list = (\x -> x exampleList)
assignToGroups n aList = zip group aList
    where group = cycle [1 .. n]

isPalindrome word = word == reverse word