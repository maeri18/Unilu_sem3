sum' = 3 + 4

sumT = (+)3 --call to funtion (+) with only one argument

sumTSteps :: [Int]
sumTSteps = steps [1..10]  
    where 
            steps :: [Int] -> [Int]
            steps (x:y:xs) = x : x+y : steps (y:xs)


--Question 1)

halve :: [a] -> ([a],[a])
halve [] = ([],[])
halve [x]= ([x],[])
halve xs = ((head xs) : (fst (halve (tail (init xs)))) , (snd (halve (init (tail xs)))) ++ [last xs] )

third1 xs = head (tail (tail xs))

third2 xs = xs !! 2

third3 :: [a]-> a
third3 [x,y,z] = z
third3 xs = third3 (init xs)

third4 :: [a]->a --teacher's 

third4 (_:_:x:_) = x

