#!/usr/bin/ruby

def bubble_sort(array)
  sorted = false
  until sorted
    sorted = true
    0.upto(array.length - 2) do |n|
      if array[n] > array[n + 1]
        array[n], array[n + 1] = array[n + 1], array[n]
        sorted = false
      end
    end
  end
  array
end

def bubble_sort_by(array)
  sorted = false
  until sorted
    sorted = true
    0.upto(array.length - 2) do |n|
      block_comparison = yield(array[n], array[n + 1])
      if block_comparison > 0
        array[n], array[n + 1] = array[n + 1], array[n]
        sorted = false
      end
    end
  end
  p array
end

p bubble_sort([4,3,78,2,0,2])
bubble_sort_by(["kitten","puppies","goats","hi","dinosaurs","dogs","cat"]) do |left,right|
    left.length - right.length
  end
