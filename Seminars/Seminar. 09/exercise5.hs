module Compose (compose) where

compose :: (b -> c) -> (a -> b) -> (a -> c)
compose f g = \x -> f (g x)
