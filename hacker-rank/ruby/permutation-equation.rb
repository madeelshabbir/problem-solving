#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'permutationEquation' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY p as parameter.
#

def permutationEquation(p)
    p.each_with_index.map do |_, i|
        p.index(p.index(i + 1) + 1) + 1
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

p = gets.rstrip.split.map(&:to_i)

result = permutationEquation p

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
