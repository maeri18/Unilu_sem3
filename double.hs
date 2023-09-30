doubleMe x = x + x


doubleUS x y = x * 2 + y * 2

doubleUs1 x y = doubleMe x + doubleMe y


double3 x y = (doubleMe x) . (doubleUS x y)
doubleSmallNumbs x = if x<100 then x*2 
                        else x

a=8 

