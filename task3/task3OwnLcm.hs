{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use map" #-}

module Main where

nwd :: Integer -> Integer -> Integer
nwd a b     | mod a b == 0 = b
            | otherwise = nwd b (mod a b)

nww :: Integer -> Integer -> Integer
nww x y = x*y `div` nwd x y

nwwOfN :: [Integer] -> Integer
nwwOfN [] = error "No numbers given"
nwwOfN [x] = x
nwwOfN (x:xs) = nww (abs x) (nwwOfN xs)

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
    else print (nwwOfN integersList)

    waitFotEnterToClose
    return ()