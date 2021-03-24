class Team

    attr_accessor :name
    def initialize(name)
        @name = name
        @matches = []
    end

    def to_s
        @name
    end

    def play(match)
        @matches << match
    end

    def print_results
        @matches.each do |match|
            puts match
        end
    end

    def total_points
        total_points = 0
        @matches.each do |match|
            if match.winner == self
                total_points +=3
            elsif match.tied?
                total_points +=1
            end
        end
        return total_points
    end

end

class Match
    attr_accessor :teamA, :teamB, :goalsA, :goalsB
    def initialize(teamA,teamB,goalsA,goalsB)
        @teamA = teamA
        @teamB = teamB
        @goalsA = goalsA
        @goalsB = goalsB
    end

    def to_s
        "#{@teamA}#{@goalsA}x#{goalsB}#{teamB}"
    end

    def home_team
        @teamA
    end

    def away_team
        @teamB
    end

    def winner
        if @goalsA > @goalsB
            @teamA
        elsif @goalsB > @goalsA
            @teamB
        else
            nil
        end
    end

    def tied?
        self.winner.nil?
    end
end