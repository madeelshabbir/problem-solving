#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'equalizeArray' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY arr as parameter.
#

def equalizeArray(arr)
    arr.size - arr.uniq.map { |d| arr.count(d) }.max
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

result = equalizeArray arr

fptr.write result
fptr.write "\n"

fptr.close()
