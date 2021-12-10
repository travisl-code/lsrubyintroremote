# What is problem and how to fix?
=begin
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'
Traceback (most recent call last):
        1: from 6.rb:2:in `<main>'
6.rb:2:in `[]=': no implicit conversion of String into Integer (TypeError)

Problem is that using names[] should take an integer of the index number
Could be fixed as names[3]
=end

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
puts names