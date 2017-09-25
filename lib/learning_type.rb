require 'bundler/setup'
require "learning_type/version"
require "learning_type/Instructions"
require "learning_type/game"

module LearningType
  class Start
    puts 'Welcome to Learning Type! Press Enter/Return to begin'
    enter = gets

    if enter == "\n"
      Instructions.new
    end
  end
end
