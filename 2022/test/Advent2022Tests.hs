module Main (main) where

import Test.HUnit
import System.Exit
import DayOne.ProblemOneTests(dayOneProblemOneTests)
import DayOne.ProblemTwoTests(dayOneProblemTwoTests)
import DayTwo.ProblemOneTests(dayTwoProblemOneTests)

tests :: Test
tests = TestList 
  $  dayOneProblemOneTests
  <> dayOneProblemTwoTests
  <> dayTwoProblemOneTests

main :: IO Counts
main = do
  results <- runTestTT tests
  if errors results + failures results == 0
    then
      exitSuccess
    else
      exitWith (ExitFailure 1)

