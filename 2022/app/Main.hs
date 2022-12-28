module Main where

import Paths_Advent2022
import DayOne.ProblemOne (dayOneProblemOneSolution)

main :: IO ()
main = dayOneProblemOne 
--  >> testMain

testMain :: IO ()
testMain = do 
  testTxt <- readDataFile "data/test.txt"
  putStrLn testTxt

dayOneProblemOne :: IO ()
dayOneProblemOne = do
  input <- readDataFile "data/day_one.txt"
  let maxCalories = dayOneProblemOneSolution input
  putStrLn $ "day one, problem one: " <> maxCalories

readDataFile :: FilePath -> IO String
readDataFile fileName = getDataFileName fileName >>= readFile 

