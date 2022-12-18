{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use map" #-}

module Main where

leastCommonMultipleOfNIntegers :: [Integer] -> Integer
leastCommonMultipleOfNIntegers [] = error "No numbers given"
leastCommonMultipleOfNIntegers [x] = x
leastCommonMultipleOfNIntegers (x:xs) = lcm (abs x) (leastCommonMultipleOfNIntegers xs)

waitFotEnterToClose :: IO Char
waitFotEnterToClose = do
    putStrLn ""
    putStrLn "Press Enter to close..."
    getChar


main :: IO ()
main = do
    putStrLn "The program returns the least common multiple of n integers"
    putStrLn "Enter a list of integers in following format: [I1,I2,I3,...,In]"

    input <- readLn
    let integersList = input :: [Integer]
    
    if null integersList then print "Empty array in input!"
    else print (leastCommonMultipleOfNIntegers integersList)

    waitFotEnterToClose
    return ()