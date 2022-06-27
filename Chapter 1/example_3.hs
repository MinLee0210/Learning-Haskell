simple x = x 
longList = [1 .. ]
stillLongList = simple longList 
backwardLongList = reverse longList

exampleList = [1 .. 10]

accessIndex = (\x -> exampleList !! x)
accessIndex_v2 = (\x -> (!!) exampleList x)

getLength = length exampleList
getReverse = reverse exampleList

isPalindrome word = word == reverse word