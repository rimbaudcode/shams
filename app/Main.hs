module Main (main) where

import Prelude (IO, putStr, readFile, (=<<))
import Shams   (genRuleNumber, getRuleFilePath)

main :: IO ()
main = putStr =<< readFile =<< getRuleFilePath =<< genRuleNumber
