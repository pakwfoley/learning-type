require "learning_type/version"

module LearningType

  class Instructions
    def give_instructions
      puts 'Copy the following text to the best of your ability then type the enter key. When you are ready to start type enter key.'
      enter = gets

      if enter == "\n"
        Game.new
      end
    end
  end

  class Game
    def get_user_input
      puts 'Copy this text.'
      user_input = gets.chomp
    end

    def results

    end
  end
end
