{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

module Main where

import Yesod

data App = App

instance Yesod App
mkYesod "App" [parseRoutes| / HomeR GET |]

getHomeR :: Handler Html
getHomeR = defaultLayout [whamlet| <h1>Hello, Haskell! |]

main = warp 80 App
