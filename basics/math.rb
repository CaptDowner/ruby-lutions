require 'pry'

def a_or_b(a,b)
  binding.pry
  if a % 2 != 0
    a/b
  else
    a ** b
  end
end

res = a_or_b(18,4)
puts res.to_s
res = a_or_b(19,2)
puts res.to_s
