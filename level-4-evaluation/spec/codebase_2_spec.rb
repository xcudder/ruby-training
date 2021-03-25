require_relative '../codebase_2'

describe TemperatureConverter do
    describe '.convert_to_celsius' do
        context 'given a number' do
            it 'should presume celsius and turn it to fahrenheit' do
                expect(TemperatureConverter::convert_to_celsius(77)).to eq(25)
            end
        end
    end

    describe '.convert_to_fahrenheit' do
        context 'given a number' do
            it 'should presume fahrenheit and turn it to celsius' do
                expect(TemperatureConverter::convert_to_fahrenheit(25)).to eq(77)
            end
        end
    end
end