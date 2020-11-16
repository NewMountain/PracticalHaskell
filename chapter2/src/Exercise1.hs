{-# LANGUAGE Strict #-}

module Exercise1 where

{-|
    This is working the Exercises from the lovely book [Practical Haskell](https://www.amazon.com/Practical-Haskell-World-Guide-Programming/dp/1484244796/ref=sr_1_1?dchild=1&keywords=Practical+Haskell&qid=1605563489&sr=8-1).
    Do yourself a favor, if you're serious about learning Haskell, buy it.
-}


originalList :: [String]
originalList = ["abc", "de"]

-- Question 1, rewrite the previous list using only : and empty list constructor
-- Note: hlint will yell loudly this is bad, I know, it's a contrived example to test understanding
question1 :: [String]
question1 = ('a' : 'b' : 'c' : []) : ('d' : 'e' : []) : []

-- Question 2, write an expression that checks whether a list is empty
-- or it's first element is empty
question2 :: [[a]] -> Bool
question2 stuff = 
    case stuff of
        [] -> True
        [[], _] -> True
        _ -> False

-- write an expression that checks whether a list has only one element.
-- It should return True for ['a'] and False for [] or ['a', 'b']
question3 :: [a] -> Bool
question3 stuff =
    case stuff of
        [_a] -> True
        _ -> False

-- Write an expression that concatenates two lists given inside another list.
-- For example, it should return "ABCDE" for ["abc", "de"]
question4 :: [[a]] -> [a]
question4 = concat


