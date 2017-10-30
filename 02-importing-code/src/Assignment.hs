{-# OPTIONS_GHC -fwarn-missing-signatures #-}
{-
module Assignment where
-}

import Data.Aeson (encode)

list :: [Int]
list = [1, 2, 3, 4]

main :: IO ()
main = do
  print (encode list)
  print "---"
  print list
