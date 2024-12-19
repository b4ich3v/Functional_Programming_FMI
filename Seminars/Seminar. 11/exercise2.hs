module Area (area) where

import Shape (Shape(..))

area :: Floating n => Shape n -> n
area (Circle r) = pi * r * r
area (Rectangle a b) = a * b
area (Ngon n r) = (fromIntegral n * r * r * sin (2 * pi / fromIntegral n)) / 2
