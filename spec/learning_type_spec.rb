require "spec_helper"

RSpec.describe LearningType do
  it "has a version number" do
    expect(LearningType::VERSION).not_to be nil
  end
end

RSpec.describe LearningType::Start do
  it "Gives instructions to start the game" do
    expect {LearningType::Start.new}.to output("Welcome to Learning Type! Press Enter/Return to begin").to_stdout
  end
end

RSpec.describe LearningType::Game do
  describe 'cget_user_input' do
    it 'returns foo as input' do
      expect($stdin).to receive(:gets)
      $stdin.gets

    end
  end
end
