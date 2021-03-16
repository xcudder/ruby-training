class String
    def distance_to(other)
        raise ArgumentError.new("distance_to cannot compare to NilClass") if other.class == NilClass

        if block_given?
            yield other
        else
            original_string_length = self.length
            target_string_length = other.length

            return original_string_length   if target_string_length == 0
            return target_string_length     if original_string_length == 0

            comparison_matrix = Array.new(original_string_length+1) {Array.new(target_string_length+1)}

            (0..original_string_length).each {|i| comparison_matrix[i][0] = i}

            (0..target_string_length).each {|j| comparison_matrix[0][j] = j}

            (1..target_string_length).each do |j|
                (1..original_string_length).each do |i|
                    if self[i-1] == other[j-1]  # adjust index into string
                        comparison_matrix[i][j] = comparison_matrix[i-1][j-1]       # no operation required
                    else
                        comparison_matrix[i][j] = [
                            comparison_matrix[i-1][j]+1,    # deletion
                            comparison_matrix[i][j-1]+1,    # insertion
                            comparison_matrix[i-1][j-1]+1,  # substitution
                        ].min
                    end
                end
            end

            comparison_matrix[original_string_length][target_string_length]
        end
    end
end

puts "lala".distance_to("lele")

puts "lala".distance_to("lele") { |other| other.length }