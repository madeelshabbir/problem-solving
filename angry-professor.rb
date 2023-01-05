#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'angryProfessor' function below.
#
# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. INTEGER k
#  2. INTEGER_ARRAY a
#

def angryProfessor(k, a)
    return 'YES' if a.inject(0) { |count, t| t > 0 ? count : count + 1 } < k

    'NO'
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

t = gets.strip.to_i

t.times do |t_itr|
    first_multiple_input = gets.rstrip.split

    n = first_multiple_input[0].to_i

    k = first_multiple_input[1].to_i

    a = gets.rstrip.split.map(&:to_i)

    result = angryProfessor k, a

    fptr.write result
    fptr.write "\n"
end

fptr.close()
