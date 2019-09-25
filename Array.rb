# Define an Array

browser = ["safari","chrome","ie","firefox"]


# Array.each do |value|

browser.each do |value|
  puts value
end


# Array.each_with_index do |value, index|

browser.each_with_index do |value, index|
  puts "index: #{index}, browser: #{value}"
end


# Array.join('')

puts browser.join(';')


# 判断一个变量是否为数组可以使用 respond.to('each')? 或者 resopnd.to('each_with_index')


