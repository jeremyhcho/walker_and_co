require_relative 'game.rb'
require 'benchmark'

# Expected Responses
expected_raw_summary = {
  'Jack' => 0,
  'John' => 2,
  'David' => 1
}

expected_sorted_summary = {
  'John' => 2,
  'David' => 1,
  'Jack' => 0
}

game = Game.new

puts "---#raw_summary---".blue
puts "response should be a Hash object: " + "#{game.raw_summary('input_file.csv').is_a? Hash}".bool
puts "response should return expected response: " + "#{game.raw_summary('input_file.csv') === expected_raw_summary}".bool

puts "\n"
puts "---#sorted_summary---".blue
puts "response should be a Hash object: " + "#{game.sorted_summary('input_file.csv').is_a? Hash}".bool
puts "response should return expected response: " + "#{game.sorted_summary('input_file.csv') === expected_sorted_summary}".bool

puts "\n"
puts "---with 5k worst case lines---".blue
puts Benchmark.measure { game.sorted_summary('large_input_file.csv') }
