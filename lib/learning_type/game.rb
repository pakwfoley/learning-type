class LearningType::Game
  attr_reader :level_number
  def initialize(level_number)
    @level_number = level_number
  end

  Text = [
    'fff jjj fff.',
    'Copy this text 1.',
    'Paragraph.',
  ]

  def play_game
    puts Text[level_number]

    user_input = gets.chomp
    results(user_input)
  end


  def results(user_input)
    @text

    (user_input == Text[level_number]) ? puts('Perfect!') : puts('Next time :(')

    LearningType::Instructions.new.give_instruction
  end
end
