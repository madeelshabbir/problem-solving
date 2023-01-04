#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'utopianTree' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER n as parameter.
#

def utopianTree(n)
    height = 0
    (n + 1).times do |i|
        height += i.odd? ? height : 1
    end
    height
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

t = gets.strip.to_i

t.times do |t_itr|
    n = gets.strip.to_i

    result = utopianTree n

    fptr.write result
    fptr.write "\n"
end

fptr.close()
