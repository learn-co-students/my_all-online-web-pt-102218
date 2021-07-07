require 'pry'
# we are iterating through each element in the passed in collection 

def my_all?(collection)
  i = 0 
  block_return_values = []
  while i < collection.length 
  # iterating the length of the collection
    block_return_values << yield(collection[i])
    # sending whatever is passed in as the argument to the block- ??   here it is evaluating the number/item given and sends back return value
    i = i + 1
  # we are going to increment each time we loop 
  end
  # adding an include to determine return value of method 
  if block_return_values.include?(false)
    false 
  else 
    true 
  end 
end