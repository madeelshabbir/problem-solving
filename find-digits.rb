#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'findDigits' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER n as parameter.
#

def findDigits(n)
    n.digits.inject(0) do |count, d|
        next count if d.zero? || !(n % d).zero?

        count + 1
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

t = gets.strip.to_i

t.times do |t_itr|
    n = gets.strip.to_i

    result = findDigits n

    fptr.write result
    fptr.write "\n"
end

fptr.close()
