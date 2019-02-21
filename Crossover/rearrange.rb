# Complete the function below.

# DO NOT MODIFY anything outside the below function
def rearrange(elements)
  elements.sort do |a, b|
    ai = a.to_i
    bi = b.to_i
    a_1_count = ai.to_s(2).count('1')
    b_1_count = bi.to_s(2).count('1')

    a_1_count == b_1_count ? ai <=> bi : a_1_count <=> b_1_count
  end
end
# DO NOT MODIFY anything outside the above function

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
