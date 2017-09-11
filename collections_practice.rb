# your code goes here
def begins_with_r(array)
  array.all? do |element|
    element[0] == "r"
  end
end

def contain_a(array)
  contains = []
  array.each do |element|
    if element.include?("a")
      contains << element
    end
  end
  contains
end

def first_wa(array)
  array.each do |element|
    if element[0] + element[1] == "wa"
      return element
    end
  end
end

def remove_non_strings(array)
  array.find_all do |element|
    element.class == String
  end
end

def count_elements(array)
  array.each do |element|
    element[:count] = 0
    name = element[:name]
    array.each do |name_count|
      if name_count[:name] == name
        element[:count] += 1
      end
    end
  end.uniq
end

def merge_data(one, two)
  merged_array = []
  one.each do |name_hash|
    name = name_hash[:first_name]
    two.each do |attribute_hashes|
      if attribute_hashes[name]
        merged_name = attribute_hashes[name]
        merged_name[:first_name] = name
        merged_array << merged_name
      end
    end
  end
  merged_array
end

def find_cool(cool)
  cool_person = []
  cool.each do |person_hash|
    if person_hash[:temperature] == "cool"
      cool_person << person_hash
    end
  end
  cool_person
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << school
    else
      organized_schools[location] = []
      organized_schools[location] << school
    end
  end
  organized_schools
end
