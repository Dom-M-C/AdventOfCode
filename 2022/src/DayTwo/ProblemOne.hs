module DayTwo.ProblemOne(playAllMoves) where


type RawShape = Char
type Score = Int

data Shape = Rock | Paper | Scissor


playAllMoves :: String -> [Score]
playAllMoves = map (uncurry playRockPaperScissors) . mapInputToMoves

mapInputToMoves :: String -> [(RawShape, RawShape)]
mapInputToMoves = map getPlayerMoves . lines

getPlayerMoves :: String -> (RawShape, RawShape)
getPlayerMoves = undefined

playRockPaperScissors :: RawShape -> RawShape -> Score
playRockPaperScissors = undefined
