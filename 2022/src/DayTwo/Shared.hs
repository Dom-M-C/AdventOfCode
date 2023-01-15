module DayTwo.Shared where

type RawShape = Char
type Score = Int

data Shape = Rock
  | Paper
  | Scissor deriving(Eq, Show)

data Outcome = Win
  | Draw
  | Loss
  deriving(Show)

data Result = Result Outcome Shape deriving(Show)

resultScore :: Result -> Score
resultScore (Result Win shape) = 6 + shapeScore shape
resultScore (Result Draw shape) = 3 + shapeScore shape
resultScore (Result Loss shape) = 0 + shapeScore shape

shapeScore :: Shape -> Score
shapeScore Rock = 1
shapeScore Paper = 2
shapeScore Scissor = 3

playRockPaperScissors :: Shape -> Shape -> Result
playRockPaperScissors Rock Paper    = Result Win Paper
playRockPaperScissors Paper Scissor = Result Win Scissor
playRockPaperScissors Scissor Rock  = Result Win Rock
playRockPaperScissors lshape rshape = if lshape == rshape
  then Result Draw rshape
  else Result Loss rshape
