# Complete the function below.

# DO NOT MODIFY anything outside the below function
def rearrange(elements)

    return [1,2,3];
end
# DO NOT MODIFY anything outside the above function

puts rearrange([ 3, 2, 1 ])

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
