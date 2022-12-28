module Main where

import Paths_Advent2022
import DayOne.ProblemOne (dayOneProblemOneSolution)
import DayOne.ProblemTwo (dayOneProblemTwoSolution)

main :: IO ()
main = dayOneProblemOne 
  >> dayOneProblemTwo

dayOneInput :: IO String
dayOneInput = readDataFile "data/day_one.txt"

dayOneProblemOne :: IO ()
dayOneProblemOne = do
  input <- dayOneInput
  let maxCalories = dayOneProblemOneSolution input
  putStrLn $ "day one, problem one: " <> maxCalories

dayOneProblemTwo :: IO ()
dayOneProblemTwo = do
  input <- dayOneInput
  let topThreeCaloriesSum = dayOneProblemTwoSolution input
  putStrLn $ "day one, problem two: " <> topThreeCaloriesSum

readDataFile :: FilePath -> IO String
readDataFile fileName = getDataFileName fileName >>= readFile 

