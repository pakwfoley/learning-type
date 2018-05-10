class LearningType::Game
  attr_reader :level_number
  def initialize
    @level_number = level_number
  end

  INSTRUCTIONS = [
    'Copy the following pattern to the best of your ability then press the enter key. When you are ready to begin press enter key.',
    'Copy the following sentence to the best of your ability then press the enter key. When you are ready to begin press enter key.',
    'Copy the following paragraph to the best of your ability then press the enter key. When you are ready to begin press enter key.',
  ]

  TEST_TEXT = [
    'fff jjj fff.',
    'Sentence.',
    'Paragraph.',
  ]

  def get_index_value(array, level_number)
    array[level_number - 1]
  end

  def give_instructions(level_number = 1)
    get_index_value(INSTRUCTIONS, level_number)
  end

  def start(level_number = 1)
    puts give_instructions(level_number)
    STDIN.getch
    print "\r"
    play_game(level_number)
  end

  def give_test(level_number = 1)
    get_index_value(TEST_TEXT, level_number)
  end

  def play_game(level_number, results = LearningType::Results.new)
    puts give_test(level_number)
    test_against = give_test(level_number)

    time_begin = Time.now
    user_input = gets
    time_end = Time.now

    final_result = results.calculate_accuracy(user_input, test_against)
    words_per_minute = results.calculate_words_per_minute(time_begin, time_end, user_input)

    puts "#{words_per_minute} words per minute at #{final_result}% accuracy"

    LearningType::Level.new.game_end?(level_number, final_result)
  end
end
