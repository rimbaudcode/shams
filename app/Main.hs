module Main where

import           Paths_shams           (getDataFileName)
import           System.FilePath.Posix ((<.>), (</>))
import           System.Random         (randomRIO)

main :: IO ()
main = putStr =<< readFile =<< getRuleFilePath =<< genRuleNumber


getRuleFilePath :: Int -> IO FilePath
getRuleFilePath rule = getDataFileName ("data" </> show rule <.> "txt")

genRuleNumber :: IO Int
genRuleNumber = randomRIO (minRuleNumber, maxRuleNumber)

minRuleNumber :: Int
minRuleNumber = 1

maxRuleNumber :: Int
maxRuleNumber = 40
