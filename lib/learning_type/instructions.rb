class LearningType::Instructions
  attr_reader :level_number, :instructions
  attr_writer :level_number
  def initialize
    @level_number = level_number
    # @instructions = instructions
  end

  Instructions = [
    'Copy the following pattern to the best of your ability then press the enter key. When you are ready to begin press enter key.',
    'Copy the following sentence to the best of your ability then press the enter key. When you are ready to begin press enter key.',
    'Copy the following paragraph to the best of your ability then press the enter key. When you are ready to begin press enter key.',
  ]

  Level_number = 0
  name = :give_instructions

  TracePoint.trace(:call) do |t|
    Level_number += 1 if t.method_id == name
    if Level_number > Instructions.length
      Level_number = 0
    end
  end

  def give_instruction
    puts Instructions[Level_number]
    enter = gets

    if enter == "\n"
      LearningType::Game.new(Level_number).play_game
    end
  end
end
