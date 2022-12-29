module DayTwo.ProblemOneTests where

import Test.HUnit
import DayTwo.ProblemOne(playAllMoves)

dayTwoTestInput :: String
dayTwoTestInput = unlines
  [ "A Y"
  , "B X"
  , "C Z"
  ]

dayTwoProblemOneTests :: [Test]
dayTwoProblemOneTests =  
  let
    allMoves = playAllMoves dayTwoTestInput

    givenRockVsPaper_whenPlayRockPaperScissors_thenScore8 =
      head allMoves

    givenPaperVsRock_whenPlayRockPaperScissors_thenScore1 =
      allMoves !! 1

    givenScissorsVsScissors_whenPlayRockPaperScissors_thenScore6 =
      allMoves !! 2
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
