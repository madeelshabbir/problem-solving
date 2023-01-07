#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'viralAdvertising' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER n as parameter.
#

def viralAdvertising(n)
    shared = 5
    cumulative_sum = 0
    n.times do |_|
        liked = (shared/2).floor
        cumulative_sum += liked
        shared = liked * 3
    end
    cumulative_sum
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

result = viralAdvertising n

fptr.write result
fptr.write "\n"

fptr.close()
