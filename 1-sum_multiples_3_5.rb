# using arrays / range
def sum_multiples_below(num)
  range_3 = (num-1) / 3
  range_5 = (num-1) / 5
  a = (1..range_3).map {|x| x * 3}
  b = (1..range_5).map {|x| x * 5}
  (a + b).uniq.sum
end

p sum_multiples_below(1000) # 233168

# using while loop
def sum_multiples_below_2(num)
  counter = 1
  sum = 0
  while counter < num

    if (counter % 3 == 0) || (counter % 5 == 0)
      sum += counter
    end
    counter += 1
  end
  sum
end

p sum_multiples_below(1000) # 233168
