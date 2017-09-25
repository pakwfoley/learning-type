class LearningType::Game
  attr_reader :user_input, :level_number
  def initialize(level_number)
    @instruction_number = instruction_number
  end

  text = [
    'Copy this text 1.',
    'Copy this text 2.',
    'Copy this text 3.',
  ]

  def output_text(level_number)
    puts text[level_number]
  end

  def get_user_input
    user_input = gets.chomp
    results(user_input)
  end

  def results(user_input)
    (user_input == text[level_number]) ? puts('Perfect!') : puts('Next time :(')
  end
end
