{-# OPTIONS_GHC -fwarn-missing-signatures #-}

module Main where

import Data.Time (getCurrentTime, gregorianMonthLength, isLeapYear)
import System.IO (readFile)

main :: IO ()
main = do
  putStrLn (greet "bobby")
  putStrLn (greet "World")
  printTime
  printNumbers
  printConfig
  printConfig2
 --   print isLeapYear 2017

greet :: [Char] -> [Char]
greet name = "Hello " ++ name ++ "!"

printNumbers :: IO ()
printNumbers = do
  putStrLn (show (3 + 4))

printConfig = do
  contents <- readFile "../stack.yaml"
  putStrLn contents

printConfig2 = do
  contents <- readFile "../my-project.cabal"
  putStrLn contents

printTime = do
  time <- getCurrentTime
  putStrLn (show time)

{-
https://hackage.haskell.org/package/time-1.8.0.3/docs/Data-Time-Clock.html
getCurrentTime :: IO UTCTime

Get the current UTCTime from the system clock.
-}
printTime2
--  time <- gregorianMonthLength (2017, 10)
--  putStrLn (show time)
 = do
  print 5
