# what will this output?
hash1 = {shoes: 'nike', "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => 'nike', hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same."
end
=begin
I think this will output the 1st line, that the hashes
are the same. The chapter mentioned that the order of hashes
was unimportant; however, I do seem to remember a note that
that a more recent version of Ruby did maintain hash order.
Still, there are no indexes with hashes, so I don't think 
their order matters in the scheme of seeing the same Key:Value
pairs.
=end