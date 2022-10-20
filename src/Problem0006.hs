module Problem0006 (answer) where

sumOfSquares :: Integer -> Integer
sumOfSquares num = sum [x * x | x <- [1..num]]

squareOfSums :: Integer -> Integer
squareOfSums num = sum [x | x <- [1..num]]

answer :: IO ()
answer = print $ sumOfSquares 100