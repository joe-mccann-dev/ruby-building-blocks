#!/usr/bin/ruby
def bubble_sort(array)
  sorted = true 
  i = 0
  while (i < array.length && sorted)
    sorted = false #if sorted = true never gets triggered below, loop stops
    0.upto(array.length - 2) do |n|
      if array[n] > array[n + 1]
        array[n], array[n + 1] = array[n + 1], array[n]
        sorted = true #continue loop
      end
    end
    i += 1
  end
  p array
end

def bubble_sort_by(array)
  i = 0
  sorted = true 
  while (i < array.length && sorted)
    sorted = false #if sorted = true never gets triggered below, loop stops
    0.upto(array.length - 2) do |n|
      block_comparison = yield(array[n], array[n + 1])
      if block_comparison > 0
        array[n], array[n + 1] = array[n + 1], array[n]
        sorted = true #continue loop
      end
    end
    i += 1
  end
 p array
end

bubble_sort([4,3,78,2,0,2])
bubble_sort_by(["kitten","puppies","goats","hi","dinosaurs","dogs","cat"]) do |left,right|
    left.length - right.length
  end