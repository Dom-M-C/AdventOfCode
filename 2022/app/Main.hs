module Main where

import Paths_Advent2022
import DayOne.ProblemOne (dayOneProblemOneSolution)

main :: IO ()
main = dayOneProblemOne 
--  >> testMain

testMain = do 
  testTxt <- readDataFile "data/test.txt"
  putStrLn testTxt


dayOneProblemOne = do
  input <- readDataFile "data/day_one.txt"
  let maxCalories = dayOneProblemOneSolution input
  putStrLn $ "day one, problem one: " <> maxCalories


readDataFile fileName = getDataFileName fileName >>= readFile 

