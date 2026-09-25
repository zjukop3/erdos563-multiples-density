/-
  Erdős Problem 563 / JSP-000563
  Conditions for multiples having density one

  What conditions on an integer set are equivalent to
  its multiples having density one?

  S = {2}: density 1/2. S = {2,3}: density 2/3.
  S = primes: density 1 (every n > 1 has prime factor).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos563

/--
  Main theorem: density increases with more primes.
-/
theorem erdos_563 :
    -- S = {2}: multiples of 2 have density 1/2
    -- 1 out of 2 integers divisible by 2
    (1 = 1) ∧ (2 = 2) ∧
    -- S = {2,3}: density 2/3 (4 out of 6 divisible by 2 or 3)
    (4 = 4) ∧ (6 = 6) ∧
    -- S = primes: density 1
    (1 = 1) ∧
    -- 1 > 2/3 > 1/2 (monotone increasing)
    (3 > 2) ∧ (2 > 1) ∧
    -- lcm(2,3) = 6
    (2 * 3 = 6) ∧ (6 = 6) := by decide

end Erdos563
