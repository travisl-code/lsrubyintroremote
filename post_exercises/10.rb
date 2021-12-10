# can hash values be arrays?
# Yes! Saw example in exercises, but here's another:
irb(main):005:0> a = {pets: ['turtle', 'goldfish', 'reindeer']}
irb(main):006:0> a
=> {:pets=>["turtle", "goldfish", "reindeer"]}

# can you have an array of hashes?
# Yes! An array can hold hashes. IRB examples here:
irb(main):001:0> x = [test: 1]
irb(main):002:0> x
=> [{:test=>1}]
irb(main):003:0> x.append(3)
=> [{:test=>1}, 3]
irb(main):004:0> x.append(hello: "goodbye")
=> [{:test=>1}, 3, {:hello=>"goodbye"}]
