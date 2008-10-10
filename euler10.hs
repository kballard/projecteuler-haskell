{-
http://projecteuler.net/index.php?section=problems&id=10

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
-}

-- note, you probably want to run this with
--     make euler10
-- rather than runghc, it will be significantly faster

import Sieve

main = do
  print $ sum $ takeWhile (<= 2000000) primes
