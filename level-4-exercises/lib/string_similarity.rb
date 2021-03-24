require_relative 'modules/custom-string.rb'

class String
    include CustomString
end

class StringSimilarity
    def self.avaliate(original, target)
        original.distance_to(target)
    end
end