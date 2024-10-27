module Main where

import Graphics.Gloss

main :: IO ()
main = display (InWindow "Hello World" (800, 600) (10, 10)) white (Circle 80)

