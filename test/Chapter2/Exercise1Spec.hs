module Chapter2.Exercise1Spec where

{-|
    This is working the Exercises from the lovely book [Practical Haskell](https://www.amazon.com/Practical-Haskell-World-Guide-Programming/dp/1484244796/ref=sr_1_1?dchild=1&keywords=Practical+Haskell&qid=1605563489&sr=8-1).
    Do yourself a favor, if you're serious about learning Haskell, buy it.
-}

import Test.Hspec
import Chapter2.Exercise1

spec :: Spec
spec = do
  describe "question 1." $
    it "Definition equivalent to originalList" $
      question1 `shouldBe` originalList
  describe "question2." $ do
    it "return true if empty" $
      question2 [] `shouldBe` True
    it "return true if first list is empty" $
      question2 [[], [1,2,3]] `shouldBe` True
    it "return false in any other case" $ do
      question2 ["Foo", "bar"] `shouldBe` False
      question2 [[1,2,3], [4,5,6]] `shouldBe` False
  describe "question3." $ do
    it "return true if one element" $ do
      question3 ['a'] `shouldBe` True
      question3 [1] `shouldBe` True
      question3 [[1]] `shouldBe` True
    it "return false in any other case" $ do
      question3 [] `shouldBe` False
      question3 [1,2] `shouldBe` False
      question3 ["Hello ", "world!"] `shouldBe` False
  describe "question4." $
    it "concatenate two lists" $ do
      question4 ["abc", "de"] `shouldBe` "abcde"
      question4 [[1, 2, 3], [4,5]] `shouldBe` [1..5]

