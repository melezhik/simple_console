require File.join(File.dirname(__FILE__), '/test_helper.rb')

class SimpleConsoleTest < MiniTest::Unit::TestCase
    def test_colorless_info_with_title
        assert_match "INFO -- : hello world => message",
            Simple::Console.new(:color_output => false).info("message", :title => "hello world")
    end

    def test_colorless_info_without_title
        assert_match "INFO -- : message",
            Simple::Console.new(:color_output => false).info("message")
    end     
end
