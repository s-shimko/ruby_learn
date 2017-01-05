#stupid sort

ary = []
i = 0
while i < 10
  ary << rand(10)
  i += 1
end

puts "Unsort array: " + ary.to_s
ary_size = ary.size

num = ary_size-1
while num != 0

  for a in 0...ary_size-1
    if ary[a].to_i > ary[a+1].to_i
      temp = ary[a+1]
      ary[a+1] = ary[a]
      ary[a] = temp
    end
  end
  num -= 1
end

puts "Sort array: " + ary.to_s
