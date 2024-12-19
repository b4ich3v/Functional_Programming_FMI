module Perimeter (perimeter) where

import Shape (Shape(..))

perimeter :: Floating n => Shape n -> n
perimeter (Circle r) = 2 * pi * r
perimeter (Rectangle a b) = 2 * (a + b)
perimeter (Ngon n r) = fromIntegral n * (2 * r * sin (pi / fromIntegral n))
