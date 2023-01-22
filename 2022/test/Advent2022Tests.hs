module Main (main) where

import Test.HUnit
import System.Exit
import DayOne.ProblemOneTests(dayOneProblemOneTests)
import DayOne.ProblemTwoTests(dayOneProblemTwoTests)
import DayTwo.ProblemOneTests(dayTwoProblemOneTests)
import DayTwo.ProblemTwoTests(dayTwoProblemTwoTests)
import DayThree.ProblemOneTests(dayThreeProblemOneTests)

tests :: Test
tests = TestList 
  $  dayOneProblemOneTests
  <> dayOneProblemTwoTests
  <> dayTwoProblemOneTests
  <> dayTwoProblemTwoTests
  <> dayThreeProblemOneTests

main :: IO Counts
main = do
  results <- runTestTT tests
  if errors results + failures results == 0
    then
      exitSuccess
    else
      exitWith (ExitFailure 1)
