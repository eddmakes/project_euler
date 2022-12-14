-- The prime factors of 13195 are 5, 7, 13 and 29.

-- What is the largest prime factor of the number 600851475143 ?

module Problem0003 (answer) where

primeFactors :: Integer -> Integer -> [Integer] -> [Integer]
primeFactors num currentFactor factors 
    | num == currentFactor          = updatedFactors
    | num `mod` currentFactor == 0  = primeFactors newNumber 2 updatedFactors
    | otherwise                     = primeFactors num incrementedFactor factors
    where 
        newNumber           = num `div` currentFactor
        incrementedFactor   = currentFactor + 1
        updatedFactors      = factors ++ [currentFactor]
            
answer :: IO ()
answer = print $ maximum $ primeFactors 600851475143 2 []
