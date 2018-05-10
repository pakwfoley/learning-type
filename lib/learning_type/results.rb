require 'amatch'
include Amatch
class LearningType::Results
  attr_accessor :user_input, :test_against, :time_begin, :time_end

  TEST_TEXT = [
    'fff jjj fff.',
    'Sentence.',
    'Paragraph.',
  ]

  def calculate_accuracy(user_input, test_against)
    jaro = JaroWinkler.new(test_against)
    jaro.ignore_case = false
    jaro_result = jaro.match(user_input)

    pair_distance = PairDistance.new(test_against)
    pair_distance_result = pair_distance.match(user_input)

    final_result = (jaro_result*pair_distance_result*100).to_i.to_s

    return final_result
  end

  def calculate_words_per_minute(time_begin, time_end, user_input)
    words = user_input.length/5.1
    minutes = (time_end - time_begin)/60
    words_per_minute = (words/minutes).to_i.to_s
    
    return words_per_minute
  end
end
