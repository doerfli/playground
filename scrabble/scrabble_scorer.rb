#!/usr/bin/env ruby

# Calculate scabble scores for all words in given file (one word per line) and sort ascending

char_scores = {
  'a' => 1,
  'b'=> 3,
  'c'=> 3,
  'd'=> 2,
  'e'=> 1,
  'f'=> 4,
  'g'=> 2,
  'h'=> 4,
  'i'=> 1,
  'j'=> 8,
  'k'=> 5,
  'l'=> 1,
  'm'=> 3,
  'n'=> 1,
  'o'=> 1,
  'p'=> 3,
  'q'=> 10,
  'r'=> 1,
  's'=> 1,
  't'=> 1,
  'u'=> 1,
  'v'=> 4,
  'w'=> 5,
  'x'=> 8,
  'y'=> 4,
  'z'=> 10,
}

Hash[ARGF.each_line.map{|w| w.downcase.strip}.map{ |w| [w.chars.map{ |c| char_scores[c]}.reduce(:+), w]}].sort_by{|k,v| k}.each{ |k,v| puts "#{k} -> #{v}" }

