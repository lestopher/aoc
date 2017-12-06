#!/usr/bin/ruby

passphrases = File.open('passphrases.txt').read

valid_phrases = 0
passphrases.each_line do |phrase|
  phrase_array = phrase.split(" ")
  valid_phrases +=1 if phrase_array.uniq.size  == phrase_array.size
end

puts valid_phrases
