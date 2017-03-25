# Complete the function below.

# DO NOT MODIFY anything outside the below function
def rearrange(elements)
    elements.sort do |a, b|
      a_1_count = a.to_s(2).count('1')
      b_1_count = b.to_s(2).count('1')

      if a_1_count == b_1_count
        a <=> b
      else
        a_1_count <=> b_1_count
      end
    end
end
# DO NOT MODIFY anything outside the above function

puts rearrange([ 5, 3, 7, 10, 14, 9 ])

=begin
_elements_cnt = 0
_elements_cnt = Integer(gets)
_elements_i=0
_elements = Array.new(_elements_cnt)

while (_elements_i < _elements_cnt)
  _elements_item = gets.to_s.strip;
  _elements[_elements_i] = (_elements_item)
  _elements_i+=1
end

res = rearrange(_elements);
for res_i in res do
  puts res_i
end
=end
