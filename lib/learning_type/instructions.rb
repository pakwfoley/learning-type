class LearningType::Instructions
  INSTRUCTIONS = [
    'Copy the following pattern to the best of your ability then press the enter key. When you are ready to begin press enter key.',
    'Copy the following sentence to the best of your ability then press the enter key. When you are ready to begin press enter key.',
    'Copy the following paragraph to the best of your ability then press the enter key. When you are ready to begin press enter key.',
  ]

  def give_instruction( level_number = 0 )
    if level_number > INSTRUCTIONS.length - 1
      puts 'Congratulations, You\'ve finished! If you would like to start again press Enter. Press control c to exit'
      enter = gets

      if enter == "\n"
      LearningType::Instructions.new.give_instruction
      end
    else
      puts INSTRUCTIONS[level_number]
      enter = gets
    end

    if enter == "\n"
      LearningType::Game.new(level_number).play_game
    end
  end
end
