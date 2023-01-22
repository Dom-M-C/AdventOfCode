module DayThree.ProblemThreeTests where

import Test.HUnit
import DayThree.ProblemOne( )

dayThreeTestInput :: String
dayThreeTestInput = unlines
  [ "vJrwpWtwJgWrhcsFMMfFFhFp"
  , "jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL"
  , "PmmdzqPrVvPwwTWBwg"
  , "wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn"
  , "ttgJtRGJQctTZtZT"
  , "CrZsJsPPZsGzwwsLwLmpwMDw"
  ]

dayThreeProblemOneTests :: [Test]
dayThreeProblemOneTests =
  let
    allRucksacks = getAllRucksacks dayTwoTestInput

    givenFirstRucksack_whenComparingItems_thenBothContainP =
      head allRucksacks

    givenPaperVsRock_whenPlayRockPaperScissors_thenScore1 =
      allRucksacks !! 1

    givenScissorsVsScissors_whenPlayRockPaperScissors_thenScore6 =
      allRucksacks !! 2
  in
    [ TestCase(
        assertEqual
          "givenRockVsPaper_whenPlayRockPaperScissors_thenScore8"
          givenRockVsPaper_whenPlayRockPaperScissors_thenScore8
          8
      )
    , TestCase(
        assertEqual 
          "givenPaperVsRock_whenPlayRockPaperScissors_thenScore1"
          givenPaperVsRock_whenPlayRockPaperScissors_thenScore1
          1
      )
    , TestCase(
        assertEqual 
          "givenScissorsVsScissors_whenPlayRockPaperScissors_thenScore6"
          givenScissorsVsScissors_whenPlayRockPaperScissors_thenScore6
          6
      )
    ]
