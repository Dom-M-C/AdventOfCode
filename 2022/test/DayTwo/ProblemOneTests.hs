module DayTwo.ProblemOneTests where

import Test.HUnit
import DayTwo.ProblemOne(playAllMoves)

dayTwoProblemOneTests :: [Test]
dayTwoProblemOneTests =  
  [givenRockVsPaper_whenPlayRockPaperScissors_thenScore8]

dayTwoTestInput = unlines
  [ "A Y"
  , "B X"
  , "C Z"
  ]

givenRockVsPaper_whenPlayRockPaperScissors_thenScore8 =
  let
    score = head (playAllMoves dayTwoTestInput)
  in
    TestCase(
      assertEqual
        "givenRockVsPaper_whenPlayRockPaperScissors_thenScore8"
        score
        8
    )
