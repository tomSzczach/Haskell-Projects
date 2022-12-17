module Main where
import System.Console.Haskeline (waitForAnyKey)

hello :: IO ()
hello = do
    putStrLn "Hello, what is your name?"
    name <- getLine
    putStrLn ("Hello, " ++ name ++ "!")

waitFotEnterToClose :: IO Char
waitFotEnterToClose = do
    putStrLn ""
    putStrLn "Press Enter key to close..."
    getChar

main :: IO ()
main = do
    hello
    waitFotEnterToClose
    return ()
