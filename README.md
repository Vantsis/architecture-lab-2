Exercise 1.
Write a function ab in Haskell that takes as a argument a positive integer n and returns a pair of integers (a, b) such that 1 ≤ a ≤ b, a · b = n and b - a is as little as possible. The type of the function should be Int> (Int, Int). You can assume that n is a non-negative integer. You are not allowed to use lists
Use the following values to check:
Main> ab 15
(3,5)
Main> ab 16
(4,4)
Main> ab 24
(4,6)
Main> ab 25
(5,5)
Main> ab 31
(1,31)
Main> ab 32
(4,8)
Main> ab 72
(8,9)
Main> ab 108
(9,12)
Main> ab 999
(27,37)
Main> ab 1024
(32,32)


Exercise 2.
Write a function sum2021 in Haskell which will take as arguments two non-negative integers m, n and return the sum:
 
The function of the function should be Integer-> Integer> Integer. You can assume that m, n are non-negative integers. You are not allowed to use lists.
Use the following values to check:
Main> sum2021 1 4
26
Main> sum2021 2 4
149
Main> sum2021 3 4
855
Main> sum2021 4 4
4096
Main> sum2021 2 12
4081
Main> sum2021 5 15
124854125
Main> sum2021 20 20
109951162777600000000000000000000
Main> sum2021 10 100
1910978815586519919747325



Instructions
1)	To write the functions you need to use the standard Lab2.hs file in which the type statements of the functions you need to construct are ready as well as an equation that defines the functions so that they return a predefined value for all values of the arguments. To answer an exercise you can replace the above equation with the appropriate equations that define the value of the function. You do not need to modify the type or name of the function.
2)	if you use import to embed ready-made code, the corresponding exercise will not be graded.
3)	Each of the functions that you are asked to implement should have the specific name and the specific type that is described in the pronunciation of the corresponding exercise and that exists in the standard file Lab2.hs. If in some exercise the name or type of function does not match the one given in the pronunciation, the exercise will not be graded.
4)	However, if the functions do not return values for some of the control values (eg they cause stack overflow, endless calculation or some runtime error) then the corresponding exercise will not be graded. If the file you submit contains syntax errors, then the entire lab exercise will be reset.

