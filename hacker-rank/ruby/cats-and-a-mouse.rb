#!/bin/ruby

require 'json'
require 'stringio'

# Complete the catAndMouse function below.
def catAndMouse(x, y, z)
    first_cat_distance = (z - x).abs
    second_cat_distance = (z - y).abs

    return 'Mouse C' if first_cat_distance == second_cat_distance

    first_cat_distance < second_cat_distance ? 'Cat A' : 'Cat B'
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.to_i

q.times do |q_itr|
    xyz = gets.rstrip.split

    x = xyz[0].to_i

    y = xyz[1].to_i

    z = xyz[2].to_i

    result = catAndMouse x, y, z

    fptr.write result
    fptr.write "\n"
end

fptr.close()
