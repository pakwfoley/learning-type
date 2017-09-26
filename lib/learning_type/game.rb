class LearningType::Game
  attr_reader :level_number
  def initialize(level_number)
    @level_number = level_number
  end

  TEXT = [
    'fff jjj fff.',
    'Sentence.',
    'Paragraph.',
  ]

  def play_game
    puts TEXT[level_number]

    user_input = gets.chomp
    results(user_input)
  end


  def results(user_input)
    (user_input == TEXT[level_number]) ? puts('Perfect!') : puts('Next time :(')

    @level_number += 1

    LearningType::Instructions.new.give_instruction(level_number)
  end
end
