# variables point to address space
a = "hi there"
b = a
a = "not here"
# b is still "hi there" in above example

=begin
The = sign assigns a new address space
=end

a = "hi there"
b = a
a << ", Bob"
# b is also "hi there, Bob"

=begin
The << mutates the caller, modifying string,
which is the same space as b

Operations either mutate address space
or they make variable point to diff space.

=end
