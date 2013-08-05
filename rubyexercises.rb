# Note: we're looking for Ruby commands for the below questions, not the actual answers, unless it's a question. 

# Hint: you can type "irb" in your terminal to get a Ruby console to test things out. For multi-line code, use an editor that can run Ruby
# code, or copy/paste into irb.

# Hint 2: you can refer to the Ruby doc for Array and Hash here: 

# http://www.ruby-doc.org/core-1.9.3/Array.html
# http://www.ruby-doc.org/core-1.9.3/Hash.html


# 1. Use the "each" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each do |f|
  puts f 
end 

# 2. Same as above, but only print out values greater than 5.
arr.each do |f|
  if f > 5 
    puts f 
  end 
end 

# 3. Now, using the same array from #2, use the "select" method to extract all odd numbers into a new array.
odd_arr = arr.select do |f| 
  f % 2 != 0
end 

p odd_arr 

# 4. Append "11" to the end of the array. Prepend "0" to the beginning.
arr << 11 
arr.unshift(0)
p arr 

# 5. Get rid of "11". And append a "3".
arr.pop
arr << 3
p arr 

# 6. Get rid of duplicates without specifically removing any one value. 
arr.uniq!
p arr 

# 7. What's the major difference between an Array and a Hash?
# array maintain orders, it's index based. Hashes do not maintain order and key value based. 

# 8. Create a Hash using both Ruby 1.8 and 1.9 syntax.
# Ruby 1.8
#{:a => 1, :b => 2}
# Ruby 1.9 
h = {:a=>1, :b=>2, :c=>3, :d=>4}


# 9. Get the value of key "b".
h[:b]

# 10. Add to this hash the key:value pair {e:5}
h[:e] = 5 

# 13. Remove all key:value pairs whose value is less than 3.5
h.each do |k,v|
  if v < 3.5 
    h.delete(k)
  end 
end 

p h 
  

# 14. Can hash values be arrays? 
#yes. Example : 
h[:f] = [9,10,11]

p h 

# Can you have an array of hashes? (give examples)
arr = [{:x=>22},{:y=>23}, h]
p arr


# 15. Look at several Rails/Ruby online API sources and say which one your like best and why.
