def celsius_to_fahrenheit(celsius)
	(celsius.to_f * 9/5) + 32
end

def fahrenheit_to_celsius(fahrenheit)
	(fahrenheit − 32) * 5/9
end

$option = 0

loop do
	puts "Converter\n1 - celsius to fahrenheit\n2 - fahrenheit to celsius"
	$option = gets.to_i
	break if $option == 1 || $option == 2
end

if($option == 1)
	puts "Celsius?"
	puts celsius_to_fahrenheit(gets)
elsif ($option == 2)
	puts "Fahrenheits?"
	puts fahrenheit_to_celsius(gets)
end