module DayTwo.ProblemTwoTests where

import DayTwo.ProblemOneTests(dayTwoTestInput)
import Test.HUnit
import DayTwo.ProblemTwo(playAllMoves)

dayTwoProblemTwoTests :: [Test]
dayTwoProblemTwoTests =  
  let
    allMoves = playAllMoves dayTwoTestInput

    givenRockVsRock_whenPlayRockPaperScissors_thenScore4 =
      head allMoves

    givenPaperVsRock_whenPlayRockPaperScissors_thenScore1 =
      allMoves !! 1

    givenScissorsVsRock_whenPlayRockPaperScissors_thenScore7 =
      allMoves !! 2
  in
    [ TestCase(
        assertEqual
          "givenRockVsRock_whenPlayRockPaperScissors_thenScore4"
          givenRockVsRock_whenPlayRockPaperScissors_thenScore4
          4
      )
    , TestCase(
        assertEqual 
          "givenPaperVsRock_whenPlayRockPaperScissors_thenScore1"
          givenPaperVsRock_whenPlayRockPaperScissors_thenScore1
          1
      )
    , TestCase(
        assertEqual 
          "givenScissorsVsRock_whenPlayRockPaperScissors_thenScore7"
          givenScissorsVsRock_whenPlayRockPaperScissors_thenScore7
          7
      )
    ]