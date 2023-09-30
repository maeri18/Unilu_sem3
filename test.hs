boombangs xs = [if x<10 then "BANG!" else "BOOM!" | x<-xs, x `mod` 2==1]
