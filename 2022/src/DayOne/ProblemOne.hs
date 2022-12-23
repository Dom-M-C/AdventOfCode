module DayOne.ProblemOne where

dayOneProblemOneTestInput = unlines 
  [   "1000"
  ,   "2000"
  ,   "3000"
  ,   ""
  ,   "4000"
  ,   ""
  ,   "5000"
  ,   "6000"
  ,   ""
  ,   "7000"
  ,   "8000"
  ,   "9000"
  ,   ""
  ,   "10000"
  ]

getElvesCalories :: String -> [Int]
getElvesCalories = map elfCalories. foldr foldElf [Elf 0] . lines
  where
    foldElf :: String -> [Elf] -> [Elf]
    foldElf [] elves = Elf 0:elves
    foldElf calories (elf:elves) = Elf (read calories + elfCalories elf) : elves


newtype Elf = Elf { elfCalories :: Int}
