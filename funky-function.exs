converter = fn(temp) -> ((temp - 32) * (5/9)) end
seconds_in = fn(days) -> (days * 86400) end

# Calls the converter func after cleaning the input
current_temp = IO.gets "enter the temp in f "
current_temp = String.trim(current_temp, "\n")
current_temp = String.to_integer(current_temp)
IO.puts(converter.(current_temp))

# Calls the seconds_in after cleaning the input
seconds = String.to_integer(String.trim((IO.gets "enter a number of days "), "\n"))
IO.puts(seconds_in.(seconds))
