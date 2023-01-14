{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use sortOn" #-}
module DayOne.ProblemTwo(sumTopThreeElvenCalories, dayOneProblemTwoSolution) where

import DayOne.ProblemOne (getElvesCalories)
import Data.List(sortBy)
import Data.Ord (comparing, Down(Down))


dayOneProblemTwoSolution :: String -> String
dayOneProblemTwoSolution = show . sumTopThreeElvenCalories

sumTopThreeElvenCalories :: String -> Int
sumTopThreeElvenCalories = sum
  . take 3 
  . sortDesc 
  . getElvesCalories

-- https://ro-che.info/articles/2016-04-02-descending-sort-haskell
-- sortBy performs better than sortOn when caching not used
sortDesc :: [Int] -> [Int]
sortDesc = sortBy (comparing Down)
