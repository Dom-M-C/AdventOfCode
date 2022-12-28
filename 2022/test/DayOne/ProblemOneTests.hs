module DayOne.ProblemOneTests (dayOneProblemOneTests, dayOneTestInput) where

import Test.HUnit
import DayOne.ProblemOne (getElvesCalories)

dayOneProblemOneTests :: [Test]
dayOneProblemOneTests =  
  [ givenElves_whenCheckingFirstElfCalories_then6000
  , givenElves_whenCheckingSecondElfCalories_then4000
  , givenElves_whenCheckingThirdElfCalories_then11000
  , givenElves_whenCheckingFourthElfCalories_then24000
  , givenElves_whenCheckingFifthElfCalories_then10000
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

givenElves_whenCheckingFirstElfCalories_then6000 :: Test
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

givenElves_whenCheckingSecondElfCalories_then4000 :: Test
givenElves_whenCheckingSecondElfCalories_then4000 =
  let
    firstElfCalories = getElvesCalories dayOneTestInput !! 1
  in
    TestCase(
      assertEqual 
        "givenElves_whenCheckingSecondElfCalories_then4000" 
        firstElfCalories 
        4000
      )

givenElves_whenCheckingThirdElfCalories_then11000 :: Test
givenElves_whenCheckingThirdElfCalories_then11000 =
  let
    firstElfCalories = getElvesCalories dayOneTestInput !! 2
  in
    TestCase(
      assertEqual 
        "givenElves_whenCheckingThirdElfCalories_then11000" 
        firstElfCalories 
        11000
      )

givenElves_whenCheckingFourthElfCalories_then24000 :: Test
givenElves_whenCheckingFourthElfCalories_then24000 =
  let
    firstElfCalories = getElvesCalories dayOneTestInput !! 3
  in
    TestCase(
      assertEqual 
        "givenElves_whenCheckingFourthElfCalories_then24000" 
        firstElfCalories 
        24000
      )

givenElves_whenCheckingFifthElfCalories_then10000 :: Test
givenElves_whenCheckingFifthElfCalories_then10000 =
  let
    firstElfCalories = getElvesCalories dayOneTestInput !! 4
  in
    TestCase(
      assertEqual 
        "givenElves_whenCheckingFifthElfCalories_then10000" 
        firstElfCalories 
        10000
      )
