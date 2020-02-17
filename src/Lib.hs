{-# language DuplicateRecordFields #-}
module Lib where

data X = X { name :: String }
    deriving Show

data Y = Y { name :: String }
    deriving Show

data Z = Z { xName :: String, age :: Int }
    deriving Show
