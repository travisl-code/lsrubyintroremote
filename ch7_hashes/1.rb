# use select method for immediate family
# in a new array
family = { 
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank", "rob", "david"],
  aunts: ["mary", "sally", "susan"]
}

imm_family = family.select do |key, value|
  key == :sisters || key == :brothers
end

p imm_family.values # could also .flatten