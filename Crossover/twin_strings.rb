# Complete the function below.

# DO NOT MODIFY anything outside the below function
def twins(a, b)
  results = []

  for i in 0...a.length do
    if a[i].length != b[i].length
      results.push("No")
    else
      a_chars = a[i].chars
      b_chars = b[i].chars

      a_even_chars, b_even_chars, a_odd_chars, b_odd_chars = [], [], [], []
      for j in 0...a_chars.length do
        if j % 2 == 0
          a_even_chars.push(a_chars[j])
          b_even_chars.push(b_chars[j])
        else
          a_odd_chars.push(a_chars[j])
          b_odd_chars.push(b_chars[j])
        end
      end

      if a_even_chars.sort == b_even_chars.sort && a_odd_chars.sort == b_odd_chars.sort
        results.push("Yes")
      else
        results.push("No")
      end
    end
  end

  results
end
# DO NOT MODIFY anything outside the above function

# DO NOT MODIFY THE CODE BELOW THIS LINE!
=begin
_a_cnt = Integer(gets)
_a_i=0
_a = Array.new(_a_cnt)

while (_a_i < _a_cnt)
  _a_item = gets.to_s.strip;
  _a[_a_i] = (_a_item)
  _a_i+=1
end

_b_cnt = Integer(gets)
_b_i=0
_b = Array.new(_b_cnt)

while (_b_i < _b_cnt)
  _b_item = gets.to_s.strip;
  _b[_b_i] = (_b_item)
  _b_i+=1
end

res = twins(_a, _b);
for res_i in res do
  puts res_i
end
=end
