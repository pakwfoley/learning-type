require 'bundler/setup'
require "learning_type/version"
require 'learning_type/game'

module LearningType

  def self.welcome
    "Welcome To Learning Type. Press enter when your ready to start"
  end

  def self.start_game(game = LearningType::Game.new)
    game.start
  end

  def self.run
    puts welcome
    gets
    start_game
  end
end

if __FILE__ == $0
  LearningType.run
end
