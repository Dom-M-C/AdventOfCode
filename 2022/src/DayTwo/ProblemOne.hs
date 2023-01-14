module DayTwo.ProblemOne
( playAllMoves
, dayTwoProblemOneSolution
) where


type RawShape = Char
type Score = Int

data Shape = Rock
  | Paper
  | Scissor deriving(Eq, Show)

data Outcome = Win Shape
  | Draw Shape
  | Loss Shape
  deriving(Show)

dayTwoProblemOneSolution :: String -> Score
dayTwoProblemOneSolution = sum . playAllMoves

playAllMoves :: String -> [Score]
playAllMoves = map (outcomeScore . uncurry playRockPaperScissors) . mapInputToMoves

mapInputToMoves :: String -> [(Shape, Shape)]
mapInputToMoves = let
    getPlayerMoves [fst,' ',snd] = (createShape fst, createShape snd)
  in
    map getPlayerMoves . lines

createShape :: RawShape -> Shape
createShape rawShape
  | rawShape `elem` ['A','X'] = Rock
  | rawShape `elem` ['B','Y'] = Paper
  | rawShape `elem` ['C','Z'] = Scissor

outcomeScore :: Outcome -> Score
outcomeScore (Win shape) = 6 + shapeScore shape
outcomeScore (Draw shape) = 3 + shapeScore shape
outcomeScore (Loss shape) = 0 + shapeScore shape

shapeScore :: Shape -> Score
shapeScore Rock = 1
shapeScore Paper = 2
shapeScore Scissor = 3

playRockPaperScissors :: Shape -> Shape -> Outcome
playRockPaperScissors Rock Paper    = Win Paper
playRockPaperScissors Paper Scissor = Win Scissor
playRockPaperScissors Scissor Rock  = Win Rock
playRockPaperScissors lshape rshape = if lshape == rshape
  then Draw rshape
  else Loss rshape
