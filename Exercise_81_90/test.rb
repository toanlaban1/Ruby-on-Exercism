=begin
Write your code for the 'Prime Factors' exercise in this file. Make the tests in
`prime_factors_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/prime-factors` directory.
=end
require 'prime'
class PrimeFactors
  def self.of(number)
    return [] if number < 2  
    i = 2
    res = []
    while number > 1
       if number % i == 0 && Prime.prime?(i)
           res += [i]
           number /= i
       else
           i += 1
       end
    end
    res
  end
end

p PrimeFactors.of(901_255)