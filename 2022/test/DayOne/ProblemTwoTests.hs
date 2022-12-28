module DayOne.ProblemTwoTests where

import Test.HUnit
import DayOne.ProblemOneTests(dayOneTestInput)
import DayOne.ProblemTwo(sumTopThreeElvenCalories)


dayOneProblemTwoTests :: [Test]
dayOneProblemTwoTests = 
  [ givenElves_whenCheckingTopThreeCaloriesSum_then45000
  ]

givenElves_whenCheckingTopThreeCaloriesSum_then45000 :: Test
givenElves_whenCheckingTopThreeCaloriesSum_then45000 =
  let
    topThreeCaloriesSum = sumTopThreeElvenCalories dayOneTestInput
  in
    TestCase(
      assertEqual 
        "givenElves_whenCheckingTopThreeCaloriesSum_then45000" 
        topThreeCaloriesSum 
        45000
      )
