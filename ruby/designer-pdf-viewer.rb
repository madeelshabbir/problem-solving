#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'designerPdfViewer' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY h
#  2. STRING word
#

def designerPdfViewer(h, word)
    hash = ('a'..'z').zip(h).to_h
    hash[word.chars.max { |a, b| hash[a] <=> hash[b] }] * word.size
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

h = gets.rstrip.split.map(&:to_i)

word = gets.chomp

result = designerPdfViewer h, word

fptr.write result
fptr.write "\n"

fptr.close()
