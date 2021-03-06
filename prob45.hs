-- Triangle, pentagonal, and hexagonal numbers are generated by the following
-- formulae:
--
-- Triangle     T_n=n(n+1)/2   1, 3, 6, 10, 15, ...
-- Pentagonal   P_n=n(3n1)/2   1, 5, 12, 22, 35, ...
-- Hexagonal    H_n=n(2n1)     1, 6, 15, 28, 45, ...
-- It can be verified that T_285 = P_165 = H_143 = 40755.
--
-- Find the next triangle number that is also pentagonal and hexagonal.
--

import Control.Monad
import Control.Monad.Instances
import Euler.Numbers
import Data.List (break)

main = do
  let nums = filter (liftM2 (&&) isPentagonal isHexagonal) triangles
  print $ head $ dropWhile (<=40755) nums
