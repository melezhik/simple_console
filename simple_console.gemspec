Gem::Specification.new do |s|
    s.name        = 'simple_console'
    s.version     = '0.0.1'
    s.summary     = "formatter for console output"
    s.description = "A simple formatter for console output"
    s.authors     = ["Alexey Melezhik"]
    s.email       = 'melezhik@gmail.com'
    s.files       = ["lib/simple/console.rb"]
    s.homepage    = 'https://github.com/melezhik'
    s.add_runtime_dependency "term-ansicolor", [">= 0"]
end
