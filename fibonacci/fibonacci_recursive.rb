require 'benchmark'

def fibonacci_recursive(n)
  return 0 if n == 0
  return 1 if n == 1

  fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
end

# Get the desired number from command-line arguments or prompt the user
if ARGV.empty?
  print "Enter the desired position in the Fibonacci sequence: "
  n = gets.chomp.to_i
else
  n = ARGV[0].to_i
end

time = Benchmark.measure do
  # Calculate and print the Fibonacci sequence
  puts "Fibonacci number at position #{n} (recursive):"
  puts fibonacci_recursive(n)
end

puts "Time taken: #{format('%.6f', time.real)} seconds"
