#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'cutTheSticks' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY arr as parameter.
#

def cutTheSticks(arr)
    stick_cut = []
    arr.delete(0)
    while !arr.size.zero? do
        stick_cut.push(arr.size)
        min = arr.min
        arr.map! { |v| v - min }
        arr.delete(0)
    end

    stick_cut
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

result = cutTheSticks arr

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
