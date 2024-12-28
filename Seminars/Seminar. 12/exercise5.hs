rats :: [(Integer, Integer)]
rats = [(p, q) | n <- [1..], p <- [0..n], q <- [1..n], gcd p q == 1]
