class LearningType::Level
  attr_accessor :level_number

  def game_end?(level_number, final_result)
    (level_number == 3) && (final_result.to_i >= 70) ? congratulations : decide_to_proceed(level_number, final_result)
  end

  def decide_to_proceed(level_number, final_result)
    (final_result.to_i >= 70) ? increment(level_number) : start_again(level_number)
  end

  def start_again(level_number)
    puts 'You can do better. To try again press enter.'
    STDIN.getch
    print "\r"
    LearningType::Game.new.start(level_number)
  end

  def increment(level_number)
    puts 'To move on to the next level press enter!'
    STDIN.getch
    print "\r"
    LearningType::Game.new.start(level_number + 1)
  end

  def congratulations
    puts 'Congratulations! Press Enter to play again.'
    STDIN.getch
    print "\r"
    LearningType::Game.new.start
  end
end
