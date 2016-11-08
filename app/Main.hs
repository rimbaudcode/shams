module Main where

import Paths_shams (getDataFileName)
import System.Random (randomRIO)
import System.FilePath.Posix ((</>),(<.>))

main :: IO ()
main = putStr =<< readFile =<< getRuleFilePath =<< genRuleNumber


getRuleFilePath :: Show a => a -> IO FilePath
getRuleFilePath rule = getDataFileName ("data" </> show rule <.> "txt")

genRuleNumber :: IO Int
genRuleNumber = randomRIO (minRuleNumber, maxRuleNumber)

minRuleNumber :: Int
minRuleNumber = 1

maxRuleNumber :: Int
maxRuleNumber = 40
