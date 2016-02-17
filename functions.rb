# tasks listed here: https://gist.github.com/rhenry1989/7945c2c9609f993bea18

def add_array_lengths(array1, array2)
  return array1.length + array2.length
end

def sum_array_of_ints(array)
  sum = 0
  count = 0
  while count < array.length
    sum += array[count]
    count += 1
  end  
  return sum
end

def find_ravenclaw_in_array(array, search_term)
  count = 0
  while count < array.length
    if array[count] == search_term
      return true
    end  
    count += 1
  end  
end

def get_first_key_name_in_hash(hash, index)
  return hash.keys[index]
end

def get_capitals_from_nested_hash(top_level_hash)
  array_of_capitals = []
    for key, value in top_level_hash
     array_of_capitals.push(value[:capital])
    end
    return array_of_capitals
end