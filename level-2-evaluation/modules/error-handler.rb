require_relative 'logging.rb'

module ErrorHandler
    def self.rescue(exception)
        Logging.log(exception.message, :ERROR)
    end
end