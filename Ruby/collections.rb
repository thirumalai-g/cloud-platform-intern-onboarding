# frozen_string_literal: true

#Arrays

arr = Array.new(10,0)

arr[0] = 1
p arr


# postive indexing
puts arr[0]

#negative indexing starts from last value

puts arr[-1]

# range accesing

p arr[1,2]

# invalid accces gives nil

p arr[12]


arr1=[]
# append in array
arr1 << 2

arr1 << 3
p arr1

# replication in array and stirng

p arr1*2

p "2"*10

p arr1

puts "string interpolation done in array #{arr1}"


# Hashing


hash = {"key1" => "value1", "key2" => "value2", "key3" => "value3" }

puts hash["key2"]


hash["key2"] ="v2"

puts hash["key2"]


# same key for two variable override latest


hash = {"key1" => "value1", "key1" => "value2", "key3" => "value3" }


puts hash["key1"]


hash["key1"] ="v2"

puts hash["key1"]

