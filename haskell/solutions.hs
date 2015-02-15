--Project Euler Problem #1	(Multiples of 3 and 5)

--If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
--Find the sum of all the multiples of 3 or 5 below 1000.
--filter 
sum' :: (Num a) => [a] -> a  
sum' = foldl (+) 0  

--function that returns true or false if multiple of 3 or 5
multipleof3or5 :: (Integral a) => a -> Bool
multipleof3or5 val
	| (val `mod` 3) == 0 = True
 	| (val `mod` 5) == 0 = True
 	| otherwise = False

euler1 :: (Integral a) => a
euler1 = sum (filter multipleof3or5 [1..999])


--Project Euler Problem #2	(Multiples of 3 and 5)

--Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
--1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
--By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
--TODO: make this work with infinite list instead of cutting it off at 4000000

fib :: (Num a, Ord a) => [a] -> [a]
fib list
    | (length list) <= 1 = fib [2,1] 
    | (new!!0) > 4000000  = list 
    | otherwise   = fib new
     where new = (list!!0 + list!!1): list 

euler2 :: (Integral a) => a

euler2 = sum (filter even (fib []))

--Project Euler Problem #3 (Largest prime factor)

--The prime factors of 13195 are 5, 7, 13 and 29.
--What is the largest prime factor of the number 600851475143 ?