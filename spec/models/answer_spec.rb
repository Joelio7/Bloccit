require 'rails_helper'

RSpec.describe Answer, type: :model do
  context "attributes" do
    let(:question) { Question.create!(title:  "New Question Title", body:  "New Question Body") }
    let(:answer)  { Asnwer.create!(body: 'Answer Body', question: question) }

    it "should respond to body" do
      expect(answer).to respond_to(:body)
    end
  end
end
