module Main (main) where

import Test.HUnit
import System.Exit
import DayOne (getElvesCalories)

main :: IO Counts
main = do
  results <- runTestTT tests
  if (errors results + failures results == 0)
    then
      exitWith ExitSuccess
    else
      exitWith (ExitFailure 1)

tests = TestList [
    TestLabel "givenElves_whenCheckingFirstElfCalories_then6000" givenElves_whenCheckingFirstElfCalories_then6000
  ]

dayOneTestInput :: String
dayOneTestInput = unlines 
  [   "1000"
  ,   "2000"
  ,   "3000"
  ,   ""
  ,   "4000"
  ,   ""
  ,   "5000"
  ,   "6000"
  ,   ""
  ,   "7000"
  ,   "8000"
  ,   "9000"
  ,   ""
  ,   "10000"
  ]

givenElves_whenCheckingFirstElfCalories_then6000 = 
  let
    firstElfCalories = head $ getElvesCalories dayOneTestInput
  in
    TestCase(
      assertEqual 
        "givenElves_whenCheckingFirstElfCalories_then6000" 
        firstElfCalories 
        6000
      )


