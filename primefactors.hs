factors :: Integral a => a -> [a]
factors n = filter (\x -> (n `mod` x) == 0) [1..n]


isPrime :: Integral a => a ->Bool 
isPrime n = factors n == [1,n]

primeFactors :: Integral a => a ->[a]
primeFactors n = filter isPrime candidates
 where candidates = filter (\x->(n `mod` x)==0) [2..ceiling (sqrt (fromIntegral n))]

primeFactors 13195


