module Logging
    LOG_LEVELS = {
        :DEBUG  => "\e[37m",
        :INFO   => "\e[36m",
        :WARN   => "\e[33m",
        :ERROR  => "\e[31m",
        :FATAL  => "\e[1;31m",
    }

    def log(message, level = :INFO)
        level_is_valid          = LOG_LEVELS.keys.include? level
        invalid_level_message   = "Log level \"#{level}\" is not a valid level\033[0m"

        raise ArgumentError.new(invalid_level_message) unless level_is_valid

        puts "#{LOG_LEVELS[level]}#{level}: #{message}\033[0m"
    end
end