#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'hurdleRace' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER k
#  2. INTEGER_ARRAY height
#

def hurdleRace(k, height)
    max_jump_required = height.max - k
    max_jump_required.negative? ? 0 : max_jump_required
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i

k = first_multiple_input[1].to_i

height = gets.rstrip.split.map(&:to_i)

result = hurdleRace k, height

fptr.write result
fptr.write "\n"

fptr.close()
