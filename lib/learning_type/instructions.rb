class LearningType::Instructions
  attr_reader :level_number, :instructions, :count
  instructions = [
    'Copy the following pattern to the best of your ability then press the enter key. When you are ready to begin press enter key.',
    'Copy the following sentence to the best of your ability then press the enter key. When you are ready to begin press enter key.',
    'Copy the following paragraph to the best of your ability then press the enter key. When you are ready to begin press enter key.',
  ]
  level_number = 0
  name = :give_instructions

  TracePoint.trace(:call) do |t|
    level_number += 1 if t.method_id == name
    if level_number > instructions.length
      level_number = 0
    end
  end

  def give_instructions(level_number)
    puts instructions[level_number]
    enter = gets

    if enter == "\n"
      LearningType::Game.new(level_number).output_text
    end
  end
end
