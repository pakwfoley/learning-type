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
    it "should start the game" do
      game = double(:start)
      expect(game).to receive(:start)
      LearningType.start_game(game)
    end
  end
end

RSpec.describe LearningType::Game do
  context "#start" do
    it "should give instructions" do
      expect(LearningType::Game.new.start()).to include('Copy the following pattern to the best of your ability then press the enter key. When you are ready to begin press enter key.')
    end
  end
end

# RSpec.describe LearningType::Start do
#   it "Gives instructions to start the game" do
#     expect($stdin).to receive(:puts)
#     $stdin.puts
#
#   it " calls instructions when user press enter" do
#     before do
#       enter = ""
#     end
#   end
#   end
#
#   it 'gets user_input' do
#     expect($stdin).to receive(:gets)
#     $stdin.gets
#   end
# end
#
# RSpec.describe LearningType::Instructions do
#   it "Gives instructions to play the game" do
#     expect($stdin).to receive(:puts)
#     $stdin.puts
#   end
#
#   it 'gets  user_input' do
#     expect($stdin).to receive(:gets)
#     $stdin.gets
#   end
# end
#
# RSpec.describe LearningType::Game do
#   it 'gets  user_input' do
#     expect($stdin).to receive(:gets)
#     $stdin.gets
#   end
# end
