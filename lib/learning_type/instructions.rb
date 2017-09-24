class LearningType::Instructions
  def give_instructions
    puts 'Copy the following text to the best of your ability then type the enter key. When you are ready to start type enter key.'
    enter = gets

    if enter == "\n"
      LearningType::Game.new.get_user_input
    end
  end
end
