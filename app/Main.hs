-- Comment out the extension to remove the warning.
{-# language DuplicateRecordFields #-}

module Main where

import qualified Lib
import qualified Lib as X (X(..))
import qualified Lib as Y (Y(..))

main :: IO ()
main = do
    let x = Lib.X { X.name = "hello" }
    print x
    print $ Lib.Y { Y.age = 3 }

    -- Using the field as an accessor fixes the warning.
    -- print (X.name x)
    -- print (Y.age (Lib.Y 3))


    -- Using the field in update syntax fixes the warning.
    -- let y = Lib.Y 3
    -- print y { Y.age = 4 }
    -- print x { X.name = "no" }
