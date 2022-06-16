messyMain :: IO()

messyMain = do
    print "Who is this email for?"
    recipient <- getLine
    print "What is the title?"
    bookTitle <- getLine
    print "Who is the Author?"
    author <- getLine
    print (createEmail recipient bookTitle author )


toPart recipient = "Dear " ++ recipient ++ ",\n"
bodyPart bookTitle = "Thanks for buying " ++ bookTitle ++ ".\n"
fromPart author = "Thanks,\n" ++ author
    
createEmail recipient bookTitle author = toPart recipient ++ bodyPart bookTitle ++ fromPart author