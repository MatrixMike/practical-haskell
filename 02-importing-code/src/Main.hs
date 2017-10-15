{-# OPTIONS_GHC -fwarn-missing-signatures #-}
module Main where

import Data.Time (getCurrentTime)
import System.IO (readFile)

main = do
    putStrLn (greet "bobby")
    putStrLn (greet "World")
    printTime
    printNumbers
    printConfig
    printConfig2
    

greet :: [Char] -> [Char]
greet name = "Hello " ++ name ++ "!"

printNumbers = do
  putStrLn (show (3+4))

printConfig = do
  contents <- readFile "../stack.yaml"
  putStrLn contents

printConfig2 = do
  contents <- readFile "../my-project.cabal"
  putStrLn contents

printTime = do
  time <- getCurrentTime
  putStrLn (show time)

