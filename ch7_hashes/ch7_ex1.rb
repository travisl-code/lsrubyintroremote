family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank", "rob", "david"],
  aunts: ["mary", "sally", "susan"]
}
immediate_fam = []

family.select do |k, v|
  if (k == :sisters) || (k == :brothers)
    immediate_fam << v
  end
end

p immediate_fam

# could also use the following

immediate_fam = family.select do |k, v|
  k == :sisters || k == :brothers
end
arr = immediate_fam.values.flatten
p arr