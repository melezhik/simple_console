require 'term/ansicolor/logger'
require 'stringio'

class Simple
  class Console
    VERSION = '0.0.1'

    include Term::ANSIColor

    attr_accessor :color_output
    
    def initialize args = {}
        @color_output = args[:color_output] || 'false'
    end

    def info(message, args={})

        str = StringIO.new
        log = Term::ANSIColor::Logger.new(str)

        if @color_output == true
            if args[:title].nil? || args[:title].empty?
                log.info_magenta_bold message
            else
                log.info_magenta_bold "#{args[:title]} => #{message}"
            end
        else
            if args[:title].nil? || args[:title].empty?
                log.info message
            else
                log.info "#{args[:title]} => #{message}"
            end
        end
        str.string.chomp
    end

    def error(message)
        str = StringIO.new
        log = Term::ANSIColor::Logger.new(str)
        string = @color_output == true ? log.error_red_bold(message) : log.error(message)
        str.string.chomp
    end

  end
end

