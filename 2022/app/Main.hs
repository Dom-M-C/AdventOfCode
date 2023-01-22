module Main where

import Paths_Advent2022
import DayOne.ProblemOne (dayOneProblemOneSolution)
import DayOne.ProblemTwo (dayOneProblemTwoSolution)
import DayTwo.ProblemOne (dayTwoProblemOneSolution)
import DayTwo.ProblemTwo (dayTwoProblemTwoSolution)
import DayThree.ProblemOne (dayThreeProblemOneSolution)

main :: IO ()
main = mapM_ solveProblem problems

data Problem = Problem
  { problemDay :: String
  , problemNum :: String
  , problemInput :: FilePath
  , problemSolution :: String -> String
  }

problems :: [Problem]
problems =
  [ Problem "one" "one" "data/day_one.txt" dayOneProblemOneSolution
  , Problem "one" "two" "data/day_one.txt" dayOneProblemTwoSolution
  , Problem "two" "one" "data/day_two.txt" dayTwoProblemOneSolution
  , Problem "two" "two" "data/day_two.txt" dayTwoProblemTwoSolution
  , Problem "three" "one" "data/day_three.txt" dayThreeProblemOneSolution
  ]

solveProblem :: Problem -> IO ()
solveProblem (Problem day problem path solution) = do
  input <- readDataFile path
  let output = solution input
  putStrLn $ "day " <> day <> ", problem " <> problem <> ": " <> output

readDataFile :: FilePath -> IO String
readDataFile fileName = getDataFileName fileName >>= readFile 
