require './classes/tournament.rb'

tournament = Tournament.new

tournament.show_menu()
tournament.calculate_points()
tournament.show_table()