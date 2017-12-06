#!/usr/bin/ruby
test = <<-DOC
5 1 9 5
7 5 3
2 4 6 8
DOC

def calculate_row(row)
  row_array = row.split(" ")
  high = row_array[0].to_i
  low = row_array[0].to_i
  row_array.each do |num|
    curr_num = num.to_i
    high = curr_num if curr_num > high
    low = curr_num if curr_num < low
  end
  high - low
end

checksum = 0
test.each_line do |line|
  checksum += calculate_row line
end
puts "checksum: #{checksum}"

spreadsheet = File.open('data').read
checksum = 0
spreadsheet.each_line do |line|
  checksum += calculate_row line
end
puts checksum
