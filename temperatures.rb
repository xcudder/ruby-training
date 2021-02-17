class Converter
	@option = 0

	def celsius_to_fahrenheit(temperature)
		(temperature.to_f * 9/5) + 32
	end

	def fahrenheit_to_celsius(temperature)
		(temperature − 32) * 5/9
	end

	def show_menu()
		loop do
			puts "Converter\n1 - celsius to fahrenheit\n2 - fahrenheit to celsius"
			@option = gets.to_i
			break if @option == 1 || @option == 2
		end
	end

	def ask_temperature()
		if(@option == 1)
			puts "Celsius?"
			puts celsius_to_fahrenheit(gets)
		elsif (@option == 2)
			puts "Fahrenheits?"
			puts fahrenheit_to_celsius(gets)
		end
	end
end

converter = Converter.new

converter.show_menu()
converter.ask_temperature()