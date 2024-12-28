primes2 :: [Integer]
primes2 = sieve nats
  where
    sieve (p:xs) = p : sieve (filter (\x -> x `mod` p /= 0) xs)
