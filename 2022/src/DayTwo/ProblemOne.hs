module DayTwo.ProblemOne
  ( playAllMoves
  , dayTwoProblemOneSolution
  ) where

import DayTwo.Shared

dayTwoProblemOneSolution :: String -> String
dayTwoProblemOneSolution = show . sum . playAllMoves

playAllMoves :: String -> [Score]
playAllMoves = map (resultScore . uncurry playRockPaperScissors) . mapInputToMoves

mapInputToMoves :: String -> [(Shape, Shape)]
mapInputToMoves input = let
    getPlayerMoves [fst,' ',snd] = (createShape fst, createShape snd)
  in
    map getPlayerMoves . lines $ input

createShape :: RawShape -> Shape
createShape rawShape
  | rawShape `elem` ['A','X'] = Rock
  | rawShape `elem` ['B','Y'] = Paper
  | rawShape `elem` ['C','Z'] = Scissor
