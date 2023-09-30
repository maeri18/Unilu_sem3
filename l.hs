upp s = [x | x<-s, x>='A', x<='Z']

factorial :: Int -> Int
factorial 0 = 1
factorial 1 = 1
factorial n = n * (factorial (n-1))

luck 7 = "yiii"
luck n = "no"
 -- Exercises Lecture 1
-- 1)
solution :: String -> String -> Bool
solution x1 "" = True
solution x1 x2 = if (last x1) == (last x2)
                 then (solution (init x1) (init x2))
                 else False

--2)
getMiddle :: String -> String
getMiddle ""=""
getMiddle [x] = [x]
getMiddle [x,y] = [x,y]
getMiddle xs = getMiddle (init (tail xs))