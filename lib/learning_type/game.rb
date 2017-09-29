class LearningType::Game
  attr_reader :level_number
  def initialize(level_number = 1)
    @level_number = level_number
  end

  INSTRUCTIONS = [
    'Copy the following pattern to the best of your ability then press the enter key. When you are ready to begin press enter key.',
    'Copy the following sentence to the best of your ability then press the enter key. When you are ready to begin press enter key.',
    'Copy the following paragraph to the best of your ability then press the enter key. When you are ready to begin press enter key.',
  ]

  TEXT = [
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
    gets
    play_game(level_number)
  end

  def play_game(level_number)
    "Do game stuff"
  end
end
