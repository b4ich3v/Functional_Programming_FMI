area :: Shape -> Float
area (Rectangle a b) = a * b
...

1. Довършете функцията area от по-горе.

2. Напишете функция perimeter, аналогична на area.

3. Нека дефинираме следния тип:
    data RPS
        = Rock
        | Paper
        | Scissors
        deriving (Show)
    Напишете функция beats :: RPS -> RPS -> Bool, която проверява дали първият аргумент побеждава втория

data List a
    = Cons a (List a)
    | Empty
    deriving (Show)

4. Дефинирайте функцията lmap за типа List a.

5. Дефинирайте функцията lfilter за типа List a.

6. Дефинирайте функцията lfoldr за типа List a.

7. Дефинирайте инстанцията Averageable за List Float:
   class Averageable a where
      avg :: a -> Float

   instance Averageable (List Float) where
      ...

8. Дефинирайте инстанцията Show за List a, така че Cons 1 (Cons 2 (Cons 3 Empty)) да изглежда като List(1 2 3).

9. Дефинирайте тип, представящ двоично дърво с произволни числови (Num) стойности по върховете. Напишете функция, която проверява дали едно       такова дърво е балансирано.
