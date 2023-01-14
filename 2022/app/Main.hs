module Main where

import Paths_Advent2022
import DayOne.ProblemOne (dayOneProblemOneSolution)
import DayOne.ProblemTwo (dayOneProblemTwoSolution)
import DayTwo.ProblemOne (dayTwoProblemOneSolution)

main :: IO ()
main = dayOneProblemOne 
  >> dayOneProblemTwo
  >> dayTwoProblemOne

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

dayTwoInput :: IO String
dayTwoInput = readDataFile "data/day_two.txt"

dayTwoProblemOne :: IO ()
dayTwoProblemOne = do
  input <- dayTwoInput
  let totalScore = dayTwoProblemOneSolution input
  putStrLn $ "day two, problem one: " <> show totalScore

readDataFile :: FilePath -> IO String
readDataFile fileName = getDataFileName fileName >>= readFile 

