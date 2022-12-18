{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module Main where
nwd :: Int -> Int -> Int
nwd a b     | mod a b == 0 = b
            | otherwise = nwd b (mod a b)
nww :: Int -> Int -> Int
nww x y = x*y `div` nwd x y

findLCM :: [Int] -> Int
findLCM [x] = x
findLCM (x:xs) = nww x (findLCM xs)

main :: IO ()
main = do
    let listL = [1, 2, 3, 4, 5]
    print(findLCM listL)
