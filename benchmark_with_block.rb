def benchmark
  time_now = Time.now
  result_from_block = yield
  time_after = Time.now
  total_time = time_after - time_now
end

# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000

running_time = benchmark { long_string.reverse }

puts "string.reverse took #{running_time} seconds to run"
