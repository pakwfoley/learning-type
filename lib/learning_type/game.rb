class LearningType::Game
  attr_reader :level_number
  def initialize(level_number)
    @level_number = level_number
  end

  def play_game
    text = [
      'Copy this text 1.',
      'Copy this text 2.',
      'Copy this text 3.',
    ]

      puts text[level_number]

      user_input = gets.chomp
      results(user_input)
    end


  def results(user_input)
    text = [
      'Copy this text 1.',
      'fff jjj fff.',
      'Paragraph.',
    ]
    (user_input == text[level_number]) ? puts('Perfect!') : puts('Next time :(')
    LearningType::Instructions.new.give_instruction
  end
end
