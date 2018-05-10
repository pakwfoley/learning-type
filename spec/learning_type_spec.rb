require "spec_helper"

RSpec.describe LearningType do
  it "has a version number" do
    expect(LearningType::VERSION).not_to be nil
  end

  context "#welcome" do
    it "should welcome the user" do
      expect(LearningType.welcome).to include("Welcome")
    end
  end

  context "#start_game" do
    it "send you to the game" do
      game = double(:start)
      expect(game).to receive(:start)
      LearningType.start_game(game)
    end
  end
end

RSpec.describe LearningType::Game do
  context "#give_instructions" do
    it "should give instructions" do
      expect(LearningType::Game.new.give_instructions).to include('Copy the following pattern to the best of your ability then press the enter key. When you are ready to begin press enter key.')
    end
  end

  context "#start" do
    let(:game) { LearningType::Game.new }
    it "starts the game" do
      expect(game).to receive(:play_game)
      game.start
    end
  end

  context "#give_test" do
    it "should output test text" do
      expect(LearningType::Game.new.give_test).to include('fff jjj fff.')
    end
  end

  context "#play_game" do
    it "gets accuracy results" do
      results = double(:calculate_accuracy)
      user_input = gets
      expect(results(user_input)).to receive(:calculate_accuracy)
      LearningType::Game.new.play_game(results(user_input))
    end

    it "gets accuracy results" do
      results = double(:calculate_wpm)
      user_input = gets
      expect(results(user_input)).to receive(:calculate_wpm)
      LearningType::Game.new.play_game(results(user_input))
    end
  end
end
