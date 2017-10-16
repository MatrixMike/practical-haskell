{-# OPTIONS_GHC -fwarn-missing-signatures #-}
module Main where

main :: IO ()
main = do
    putStrLn (greet "bobby")
    putStrLn (greet "World")

greet :: [Char] -> [Char]
greet name = "Hello " ++ name ++ "!"
