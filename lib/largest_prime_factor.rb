# Enter your procedural solution here!



def is_prime?(n)
  return false if n <= 1
  (2..(Math.sqrt(n))).all? {|z| n % z != 0}
end

def prime_factors(n)
  (1..(Math.sqrt(n))).select {|p| is_prime?(p) && n % p == 0}
end

def largest_prime_factor(n)
  prime_factors(n).max
end
