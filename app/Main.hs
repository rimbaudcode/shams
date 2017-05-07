module Main (main) where

import Shams (genRuleNumber, getRuleFilePath)

main :: IO ()
main = putStr =<< readFile =<< getRuleFilePath =<< genRuleNumber
