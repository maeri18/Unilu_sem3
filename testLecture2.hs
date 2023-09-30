import Distribution.Simple.Utils (xargs)
import Distribution.Compat.CharParsing (CharParsing(char))
ageGroup age |age < 18 = "Junior" 
             |age<65 = "Adult" 
             |otherwise = "Senior"

abs' :: (Num a, Ord a)=>a->a
abs' x | x>0 = x
      | otherwise = -x

charToDigit :: Char -> Int
charToDigit c =
    case c of
        '0' -> 0
        '1'-> 1
        '2'-> 2
        '3'-> 3
        '4'-> 4
        '5'-> 5
        '6'-> 6
        '7'-> 7
        '8'-> 8
        '9'-> 9
        _ -> -1 --character 

primes = filterPrime [2..]
    where filterPrime (p:xs) = 
            p : filterPrime [x | x<-xs, x `mod` p /= 0]

fib1 :: Int->Int
fib1 0 = 1
fib1 1 = 2
fib1 n = fib1 (n-1) + fib1 (n-2)

fibs :: [Int]
fibs = gen 1 2
    where 
            gen :: Int -> Int -> [Int]
            gen x y = x : gen y (x+y)




