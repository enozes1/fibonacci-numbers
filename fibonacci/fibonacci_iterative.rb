require 'benchmark'

def fibonacci_iterative(n)
  return [] if n <= 0
  return [0] if n == 1

  sequence = [0, 1]

  (2...n).each do
    next_fibonacci = sequence[-1] + sequence[-2]
    sequence << next_fibonacci
  end

  sequence
end

# Get the desired length from command-line arguments or prompt the user
if ARGV.empty?
  print "Enter the desired length of the Fibonacci sequence: "
  n = gets.chomp.to_i
else
  n = ARGV[0].to_i
end

time = Benchmark.measure do
  # Calculate and print the Fibonacci sequence
  fib_sequence = fibonacci_iterative(n)
  puts "Fibonacci sequence (iterative) of length #{n}:"
  puts fib_sequence.join(', ')
end

puts "Time taken: #{format('%.6f', time.real)} seconds"
