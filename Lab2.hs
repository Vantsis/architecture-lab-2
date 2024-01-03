ab :: Int -> (Int,Int)
ab n = ab' n 1

ab' :: Int -> Int -> (Int,Int)
_- loops from 1 to n/2 finding the divisors
-- (n/2 because the divisors will be symmetric after the half, e.g: 12 = 2*6 = 6*2, 6 >= 12/2)
ab' n x
    -- if we reached base recursion, output the default divisor: 
    | x >= n `div` 2 = (1,n)
    -- if we found a divisor, the return the minimum between the current tuple and the best yet.
    | n `mod` x == 0 = min' (x',y') $ ab' n (x+1)
    -- otherwise step up to the next interation.
    | otherwise      = ab' n (x+1)
        where
            -- This makes sure that in (x',y'), x' <= y'
            x' = min x (n `div` x)
            y' = max x (n `div` x)
            -- We need a custom minimum function.
            min' :: (Int,Int) -> (Int, Int) -> (Int,Int)
            min' t@(x,y) t'@(x',y')
                | y-x <= y'-x' = t
                | otherwise    = t' 

sum2021 :: Integer -> Integer -> Integer
-- Since we need to preserve m n, and we also need an index, it's best to use an auxiliary function.
sum2021 m n = sum2021' m n m

sum2021' :: Integer -> Integer -> Integer -> Integer
sum2021' m n i 
    -- if we reached the upper bound, then we hit a base case and return 0.
    | i > n     = 0 
    -- otherwise just sum the formula.
    | otherwise = (n+i)^m + sum2021' m n (i+1)