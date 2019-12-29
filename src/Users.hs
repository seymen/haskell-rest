{-# LANGUAGE DeriveGeneric #-}

module Users ( getAllUsers
  ) where

import GHC.Generics
import Data.Aeson (FromJSON, ToJSON)

data User = User
  {
    userId :: Int
    , userName :: String
  } deriving (Show, Generic)

instance ToJSON User
instance FromJSON User

bob :: User
bob = User { userId = 1, userName = "bob"}

jenny :: User
jenny = User { userId = 2, userName = "jenny"}

getAllUsers :: [User]
getAllUsers = [bob, jenny]
