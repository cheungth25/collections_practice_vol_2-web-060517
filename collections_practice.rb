# your code goes here
def begins_with_r(tool_array)
  val = true
  tool_array.each { |tool| val = false if !tool.start_with?("r")}
  return val
end

def contain_a(array)
  new_array = []
  array.each { |element| new_array << element if element.index("a") }
  return new_array
end

def first_wa(array)
  array.find { |element| element.match(/wa/) }
end

def remove_non_strings(array)
  array.delete_if { |element| !element.is_a? String}
end

def count_elements(array)
  new_array = []
  array.each { |element|
    temp_hash = element
    temp_hash[:count] = array.count(element)
    new_array << temp_hash
    array.delete_if { |duplicate| element == duplicate }
  }
  return new_array
end

def merge_data(keys, data)
  new_array = []
  keys.each { |person|
    temp_hash = data.find { |person_data| person_data[person[:first_name]]}
    new_array << person.merge(temp_hash[person[:first_name]])
  }
  return new_array
end

def find_cool(cool_array)
  new_array = []
  cool_array.each { |cool_hash|
    if cool_hash[:temperature] == "cool"
      new_array << cool_hash
    end
  }
  return new_array
end

def organize_schools(schools)
  new_hash = {}
  schools.each { |key, value|
    if !new_hash[value[:location]]
      new_hash[value[:location]] = []
    end
    new_hash[value[:location]] << key
  }
  return new_hash
end
