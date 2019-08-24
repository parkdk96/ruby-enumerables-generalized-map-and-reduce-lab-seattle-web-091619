# Your Code Here
def map(source_array)
  source_array.length.times do |i|
    # source_array[i] is the argument passed to yield that is evaluated in the block code
    source_array[i] = yield(source_array[i])
  end
  return source_array
end

def reduce(source_array, starting_point = 0)
  source_array.length.times do |i|
    # this time both source_array[i] and starting_point are sent to be evaluated in the block code
    starting_point = yield(source_array[i], starting_point)
  end
  if !starting_point
    return FALSE
  end
  return starting_point
end
  
