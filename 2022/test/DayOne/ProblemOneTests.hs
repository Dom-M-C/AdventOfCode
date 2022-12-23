module DayOne.ProblemOneTests (dayOneProblemOneTests) where

import Test.HUnit
import DayOne.ProblemOne (getElvesCalories)

dayOneProblemOneTests = TestList 
  [ TestLabel "givenElves_whenCheckingFirstElfCalories_then6000" givenElves_whenCheckingFirstElfCalories_then6000
  , TestLabel "givenElves_whenCheckingSecondElfCalories_then4000" givenElves_whenCheckingSecondElfCalories_then4000
  , TestLabel "givenElves_whenCheckingThirdElfCalories_then11000" givenElves_whenCheckingThirdElfCalories_then11000
  , TestLabel "givenElves_whenCheckingFourthElfCalories_then24000" givenElves_whenCheckingFourthElfCalories_then24000
  , TestLabel "givenElves_whenCheckingFifthElfCalories_then10000" givenElves_whenCheckingFifthElfCalories_then10000
  ]

dayOneProblemOneTestInput :: String
dayOneProblemOneTestInput = unlines 
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
    firstElfCalories = head $ getElvesCalories dayOneProblemOneTestInput
  in
    TestCase(
      assertEqual 
        "givenElves_whenCheckingFirstElfCalories_then6000" 
        firstElfCalories 
        6000
      )

givenElves_whenCheckingSecondElfCalories_then4000 =
  let
    firstElfCalories = getElvesCalories dayOneProblemOneTestInput !! 1
  in
    TestCase(
      assertEqual 
        "givenElves_whenCheckingSecondElfCalories_then4000" 
        firstElfCalories 
        4000
      )

givenElves_whenCheckingThirdElfCalories_then11000 =
  let
    firstElfCalories = getElvesCalories dayOneProblemOneTestInput !! 2
  in
    TestCase(
      assertEqual 
        "givenElves_whenCheckingThirdElfCalories_then11000" 
        firstElfCalories 
        11000
      )

givenElves_whenCheckingFourthElfCalories_then24000 =
  let
    firstElfCalories = getElvesCalories dayOneProblemOneTestInput !! 3
  in
    TestCase(
      assertEqual 
        "givenElves_whenCheckingFourthElfCalories_then24000" 
        firstElfCalories 
        24000
      )

givenElves_whenCheckingFifthElfCalories_then10000 =
  let
    firstElfCalories = getElvesCalories dayOneProblemOneTestInput !! 4
  in
    TestCase(
      assertEqual 
        "givenElves_whenCheckingFifthElfCalories_then10000" 
        firstElfCalories 
        10000
      )
