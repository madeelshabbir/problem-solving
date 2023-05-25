#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'serviceLane' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER n
#  2. 2D_INTEGER_ARRAY cases
#

def serviceLane(width, cases)
    cases.map do |c|
        width[c.first..c.last].min
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i

t = first_multiple_input[1].to_i

width = gets.rstrip.split.map(&:to_i)

cases = Array.new(t)

t.times do |i|
    cases[i] = gets.rstrip.split.map(&:to_i)
end

result = serviceLane width, cases

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
