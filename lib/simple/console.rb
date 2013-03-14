require 'paint'
require 'logger'
require 'stringio'

class Simple
  class Console
    VERSION = '0.0.1'

    include Paint

    attr_accessor :color_output
    
    def initialize args = {}
        @color_output = args[:color_output] || 'false'
    end

    def info(message, args={})

        str = StringIO.new
        log = Logger.new(str)

        if @color_output == true
            if args[:title].nil? || args[:title].empty?
                log.info(Paint(message, :white, :blue))
            else
                log.info("#{Paint(args[:title], :white, :yellow)} #{Paint(message, :white, :blue)}")
            end
        else
            if args[:title].nil? || args[:title].empty?
                log.info(message)
            else
                log.info "#{args[:title]} => #{message}"
            end
        end
        str.string.chomp
    end

    def error(message)
        str = StringIO.new
        log = Logger.new(str)
        string = @color_output == true ? log.error(Paint(message, :red, :black)) : log.error(message)
        str.string.chomp
    end

  end
end

