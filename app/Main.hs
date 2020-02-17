{-# language DuplicateRecordFields #-}
module Main where

import qualified Lib
import qualified Lib as X (X(..), Z(..))
import qualified Lib as Y (Y(..))

main :: IO ()
main = do
    let x = Lib.X { X.name = "hello" }
    print x
    print $ Lib.Y { Y.name = "goodbye" }
    print $ Lib.Z { X.age = 3, X.xName = X.name x }


