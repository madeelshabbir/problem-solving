#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'countingValleys' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER steps
#  2. STRING path
#

def countingValleys(_, path)
    step = 0
    path.chars.inject(0) do |valley_count, char|
        if char == 'U' && step == -1
            step += 1
            next valley_count + 1
        end

        if char == 'U'
            step += 1
        elsif char == 'D'
            step -= 1
        end

        valley_count
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

steps = gets.strip.to_i

path = gets.chomp

result = countingValleys steps, path

fptr.write result
fptr.write "\n"

fptr.close()
