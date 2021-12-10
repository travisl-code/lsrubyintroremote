# what will this return?
# what is value of arr after each?

# The delete value returns the deleted value or nil if nothing deleted.

arr = ["b", "a"]
# product multiplies for 2D array
arr = arr.product(Array(1..3))
# [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
arr.first.delete(arr.first.last)
# arr.first is ["b", 1] sub-array, and the delete will delete both values
# INCORRECT -- arr.first pull 1st sub-array ["b", 1], but not modified
# delete is called... not sure why arr.first.delete is needed instead of arr.delete
# ... not finding answer online
# arr.first.last tells us first sub-array, last value in that sub-array

arr2 = ["b", "a"]
arr = arr.product([Array(1..3)])
# [["b", [1, 2, 3]], ["a", [1, 2, 3]]] <- I think? Yes!
arr.first.delete(arr.first.last)
# arr.first = ["b", [1, 2, 3]], so it will delete the [1, 2, 3]