# your code goes here
def begins_with_r(array)
  array.each do |element|
    if element[0] != ("r" || "R")
      return false
    end 
  end 
  true 
end 


def contain_a(array)
  new_array = []
  array.each do |element|
    i = 0
    while i < element.length
      if element[i] == ("a" || "A")
          new_array << element
          break 
      end 
      i += 1
    end 
  end
  new_array 
end 


def first_wa(array)
  array.each do |element|
    i = 0
    while i < element.length-1
      if element[i].downcase + element[i+1].downcase == "wa"
          return element 
      end 
      i += 1
    end 
  end
end 


def remove_non_strings(array)
  new_array = []
  array.each do |element|
    if element == element.to_s
      new_array << element
    end 
  end
  new_array 
end 


def count_elements(array)
  unique_array = array.uniq
  unique_array.collect do |element|
    element[:count] = array.count(element)
  end
  unique_array
end 


def merge_data(keys, data)
  keys.map do |key|
    key.merge(data[0][key[:first_name]])
  end
end 


def find_cool(data)
  data.select do |element|
    element[:temperature] == "cool"
  end
end 


def organize_schools(schools)
  cities = schools.values.uniq.map { |element| element[:location] }
  school_locations = cities.map do |city|
    schools.select { |school, location| location[:location] == city }.keys
  end
  cities.zip(school_locations).to_h
end 