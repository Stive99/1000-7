delay = 0.05
i = 0
n = 1000

while i < 143
  if n <= 6
	puts 'Я гуль!'
	break
  end

  puts "#{n} - 7 = #{n - 7}"
  n -= 7

  sleep delay
  i += 1
end