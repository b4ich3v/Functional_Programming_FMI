primes :: [Integer]
primes = sieve nats
  where
    sieve (p:xs) = p : sieve (filter (\x -> x `mod` p /= 0) xs)
