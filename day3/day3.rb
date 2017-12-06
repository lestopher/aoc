#!/usr/bin/ruby

vector = { x: 1, y: 0 }
segment_length = 1

current = { x: 0, y: 0 }
segment_passed = 0

(1...265149).each do |idx|
  current[:x] += vector[:x]
  current[:y] += vector[:y]
  segment_passed += 1

  if segment_passed == segment_length
    segment_passed = 0

    temp = vector[:x]
    vector[:x] = -vector[:y]
    vector[:y] = temp
    segment_length += 1 if vector[:y] == 0
  end
  # puts "#{idx} - #{current} - #{vector}"
end

def manhattan_distance(current, origin)
  (current[:x] - origin[:x]).abs + (current[:y] - origin[:y]).abs
end

puts current
puts manhattan_distance current, { x: 0, y: 0 }
