{-# LANGUAGE OverloadedStrings #-}

module Main where

import Web.Scotty

import Users

-- Two important signatures:
--
-- scotty :: Port -> ScottyM () -> IO ()
-- get :: RoutePattern -> ActionM () -> ScottyM ()

main :: IO ()
main = do
  putStrLn "Starting Server..."
  scotty 3000 routes

routes :: ScottyM ()
routes = getHome
         >> getUsers

getHome :: ScottyM ()
getHome =
  get "/" $ html "<h1>Welcome to Home</h1>"

getUsers :: ScottyM ()
getUsers =
  get "/users" $ json getAllUsers
