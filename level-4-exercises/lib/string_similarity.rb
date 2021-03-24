require_relative 'modules/custom-string.rb'

class String
    include CustomString
end

class StringSimilarity
    def self.percentage(original, target)
        larger_string_length = [original.length, target.length].max
        ((larger_string_length - original.distance_to(target)) / larger_string_length.to_f * 100).round(2)
    end
end