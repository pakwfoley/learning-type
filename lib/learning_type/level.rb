class LearningType::Level
  attr_accessor :level_number
  def initialize(level_number)
    @level_number = level_number
  end

  def increment(level_number)
    level_number += 1
    LearningType::Game(level_number).new.start
  end
end
