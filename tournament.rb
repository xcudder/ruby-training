class Tournament
	def initialize()
        # @scores = []
        @scores = [
			"Team A 3 x 1 Team B",
			"Team C 0 x 0 Team D",
			"Team A 1 x 1 Team C",
			"Team B 2 x 3 Team D",
			"Team A 2 x 1 Team D",
			"Team B 3 x 1 Team C"
        ]

        @teams = {}
    end

	def show_menu()
		puts "Tournament\nInsert scores in the 'Team <letter> <number> x <number> Team <letter> ' format\nType 'Exit' to exit and see the tournament table"

		loop do
			puts "Enter score:"
			input = gets.chomp
			break if input == "Exit"
			@scores.push input
		end
	end

	def calculate_points()
		@scores.each do |score_string|
			tmp = score_string.split(' x ')
			tmp[0] = tmp[0].split(' ')
			tmp[1] = tmp[1].split(' ')

			if(tmp[0][2].to_i > tmp[1][0].to_i)
				@teams[tmp[0][1]] ||= 0
				@teams[tmp[0][1]] += 3
			elsif (tmp[0][2].to_i > tmp[1][0].to_i)
				@teams[tmp[1][2]] ||= 0
				@teams[tmp[1][2]] += 3
			else
				@teams[tmp[0][1]] ||= 0
				@teams[tmp[0][1]] += 1
				@teams[tmp[1][2]] ||= 0
				@teams[tmp[1][2]] += 1
			end
		end
	end

	def show_table()
		@teams.sort_by { |team, points| points }.reverse.each do |team, points|
			puts "Team: " + team + " | Points: " + points.to_s
		end
	end
end

tournament = Tournament.new

tournament.show_menu()
tournament.calculate_points()
tournament.show_table()
