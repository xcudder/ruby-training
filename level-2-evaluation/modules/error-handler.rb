require_relative 'logging.rb'

module ErrorHandler
    extend Logging

    def self.rescue(exception)
        log exception.message, :ERROR
    end
end