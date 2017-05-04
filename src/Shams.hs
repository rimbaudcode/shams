{-# LANGUAGE ApplicativeDo #-}

module Shams
    ( genRuleNumber
    , getRuleFilePath
    ) where

import Paths_shams           (getDataFileName)
import System.FilePath.Posix ((<.>), (</>))
import System.Random         (randomRIO)

genRuleNumber :: IO Int
genRuleNumber = randomRIO (minRuleNumber, maxRuleNumber)

getRuleFilePath      :: Int -> IO FilePath
getRuleFilePath = getDataFileName . (<.> "txt") . ("data" </>) . show

maxRuleNumber :: Int
maxRuleNumber = 40

minRuleNumber :: Int
minRuleNumber = 1
