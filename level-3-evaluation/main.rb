require './modules/custom-string.rb'

class String
    include CustomString
end

puts 'lala'.distance_to('lele')

puts 'lala'.distance_to('lele') { |other| other.length }

puts 'lala'.distance_to(nil)