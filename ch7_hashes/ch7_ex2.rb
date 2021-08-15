me = {name: "travis", age: 35}
wife = {name: "rayne", age: 28}

# Merge is nondestructive (does not mutate caller)
me.merge(wife) # returns {name: "rayne", age: 28}

p me # would still contain travis and 35 as values in hash

# merge! is destructive, changes original hash
me.merge!(wife) # destructive. me values change

p me # now shows name: "rayne", age: 28