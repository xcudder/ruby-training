require_relative '../codebase_1'

describe Team do
    team = Team.new('The team\'s name')

    describe '#to_s' do
        it 'should return the team\'s name' do
            expect(team.to_s).to eq('The team\'s name')
        end
    end

    describe '#play' do
        context 'given new matches' do
            it 'should add those matches to the matches property' do
                team.play('Match mock 1')
                team.play('Match mock 2')

                expect(team.instance_variable_get(:@matches).length).to eq(2)
                expect(team.instance_variable_get(:@matches).last).to eq('Match mock 2')
            end
        end
    end

    describe '#print_results' do
        it 'should output all matches as various strings' do
            expect do
                team.print_results
            end.to output("Match mock 1\nMatch mock 2\n").to_stdout
        end
    end

    describe '#total_points' do

        it 'should attribute 0 points to a loss' do
            team.instance_variable_set(:@matches, [])
            team.play(Match.new(team, 'team B mock',0,1))
            expect(team.total_points).to eq(0)
        end

        it 'should attribute 1 points to a draw' do
            team.instance_variable_set(:@matches, [])
            team.play(Match.new(team, 'team B mock',1,1))
            expect(team.total_points).to eq(1)
        end

        it 'should attribute 3 points to a single win' do
            team.instance_variable_set(:@matches, [])
            team.play(Match.new(team, 'team B mock',3,1))
            expect(team.total_points).to eq(3)
        end

        it 'should return an int with the total points the team scored throughout all matches' do
            team.instance_variable_set(:@matches, [])
            team.play(Match.new(team, 'team B mock',3,1))
            team.play(Match.new(team, 'team B mock',3,1))
            team.play(Match.new(team, 'team B mock',1,1))
            expect(team.total_points).to eq(7)
        end
    end
end

describe Match do
    describe '#to_s' do
        it 'should return a string containing the match\'s teams and goals in the correct format' do
            game =  Match.new('team A mock','team B mock',1,0)
            expect(game.to_s).to eq('team A mock1x0team B mock')
        end
    end

    describe '#winner' do
        it 'should return the winner team' do
            game =  Match.new('team A mock','team B mock',1,0)
            expect(game.winner).to eq('team A mock')

            game =  Match.new('team A mock','team B mock',0,1)
            expect(game.winner).to eq('team B mock')
        end


        it 'should return nil the case of a tie' do
            game =  Match.new('team A mock','team B mock',1,1)
            expect(game.winner).to be_nil
        end
    end

    describe '#tied' do
        it 'should return true in the case of a tie' do
            game =  Match.new('team A mock','team B mock',1,1)
            expect(game.tied?).to be true
        end

        it 'should return false if there was a winner' do
            game =  Match.new('team A mock','team B mock',0,1)
            expect(game.tied?).to be false
        end
    end
    # end
end