require 'rails_helper'

RSpec.describe QuestionController, type: :controller do
  describe "Get question" do
    it "renders the question template" do
      get :question
      expect(response).to render_template("question")
    end
  end
end
