require "spec_helper"

RSpec.describe LearningType do
  it "has a version number" do
    expect(LearningType::VERSION).not_to be nil
  end
end

RSpec.describe LearningType::Start do
  it "Gives instructions to start the game" do
    expect {$stdin}.to recieve(:puts)
  end
end

RSpec.describe LearningType::Game do
  describe 'get_user_input' do
    it 'returns foo as input' do
      expect($stdin).to receive(:gets)
      $stdin.gets
    end
  end
end
