{-# OPTIONS_GHC -fwarn-missing-signatures #-}

--try compilation w/othe following line =>failure
{-# LANGUAGE DeriveGeneric #-}
{-
module Assignment where
-}

import Data.Aeson
import Data.ByteString.Lazy.Char8
import GHC.Generics
import Data.Aeson (encode)

data MyData = MyData { text :: String, number :: Int } deriving (Show, Generic)

instance FromJSON MyData
instance ToJSON MyData

myData :: MyData
myData = MyData "Hello" 123

list :: [Int]
list = [1, 2, 3, 4]



main :: IO ()
main = do
  print (encode list)
  print "---"
  print list
  print myData
  print $ unpack $ encode myData
  print $ encode myData
