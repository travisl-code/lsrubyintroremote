# how to return word "example"
arr = [["test", "hello", "world"], ["example", "mem"]]

=begin
# This doesn't work...

arr.each do |word|
  word.each do |sub_word|
    if sub_word == "example"
      sub_word
    end
  end
end
=end

arr.last.first # don't reinvent wheel