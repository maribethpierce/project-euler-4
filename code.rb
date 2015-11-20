# require 'pry'
# def palindrome?(input)
#   array = input.to_s.split('')
#   l = array.length
#   if l % 2 == 0
#     @half = l / 2
#   else
#     @half = (l - 1) / 2
#   end
#   first = array[0..@half]
#   rev = array.reverse
#   last = rev[0..@half]
#   if first == last
#     true
#   else
#     false
#   end
# end
#
# def largest
#   a = []
#   b = 100
#   pals = []
#   until b == 1000
#     a << b
#     b += 1
#   end
#   a.reverse!
#   a.each do |num|
#     if palindrome?(num * num - 1)
#       pals << (num * num - 1)
#     end
# end
# print largest
# # print palindrome?(123321)
# # print palindrome?(1234567890)

the_number = 0

999.downto(100) do |first|
  first.downto(100) do |second|
    product = first * second
    the_number = product if product > the_number && product.to_s == product.to_s.reverse
    break if product <= the_number
  end
end

print the_number
