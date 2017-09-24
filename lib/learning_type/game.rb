class LearningType::Game
  attr_reader :user_input
  def get_user_input
    puts 'Copy this text.'
    user_input = gets.chomp
    results(user_input)
  end

  def results(user_input)
    (user_input == 'Copy this text.') ? puts('Perfect!') : puts('Next time :(')
  end
end
