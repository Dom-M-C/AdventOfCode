module DayTwo.ProblemTwo where --(playAllMoves, dayTwoProblemTwoSolution) where

import DayTwo.Shared

dayTwoProblemTwoSolution :: String -> String
dayTwoProblemTwoSolution = show . sum . playAllMoves

playAllMoves :: String -> [Score]
playAllMoves = map (uncurry playRequiredOutcome . parseShapeOutcome) . lines

parseShapeOutcome :: String -> (Shape, Outcome)
parseShapeOutcome [shape,' ',outcome] = 
  let
    opponentShape = createShape shape
    requiredOutcome = getRequiredOutcome outcome
  in
    (opponentShape, requiredOutcome)

playRequiredOutcome :: Shape -> Outcome -> Score
playRequiredOutcome opponentShape outcome =
  let
    requiredShape = getRequiredShape opponentShape outcome
    playGame = playRockPaperScissors opponentShape requiredShape
  in
    resultScore playGame

createShape :: RawShape -> Shape
createShape 'A' = Rock
createShape 'B' = Paper
createShape 'C' = Scissor

getRequiredOutcome :: RawShape -> Outcome
getRequiredOutcome 'Y' = Draw
getRequiredOutcome 'X' = Loss
getRequiredOutcome 'Z' = Win

getRequiredShape :: Shape -> Outcome -> Shape
getRequiredShape shape Draw = shape
getRequiredShape shape Win  = invertShape shape
getRequiredShape shape Loss = invertShape . invertShape $ shape

invertShape :: Shape -> Shape
invertShape Rock = Paper
invertShape Paper = Scissor
invertShape Scissor = Rock
