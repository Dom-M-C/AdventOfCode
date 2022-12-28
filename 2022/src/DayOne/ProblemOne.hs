module DayOne.ProblemOne (getElvesCalories, dayOneProblemOneSolution) where

getElvesCalories :: String -> [Int]
getElvesCalories = map elfCalories . foldr foldElf [Elf 0] . lines
  where
    foldElf :: String -> [Elf] -> [Elf]
    foldElf [] elves = Elf 0:elves
    foldElf calories (elf:elves) = Elf (read calories + elfCalories elf) : elves

dayOneProblemOneSolution :: String -> String
dayOneProblemOneSolution = show . foldr max 0 . getElvesCalories

newtype Elf = Elf { elfCalories :: Int}
