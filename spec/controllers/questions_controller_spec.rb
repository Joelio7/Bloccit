require 'rails_helper'
 include RandomData

 RSpec.describe QuestionsController, type: :controller  do
let (:my_question) {Question.create!(title: RandomData.random_sentence , body: RandomData.random_paragraph, resolved: true || false) }

describe "GET index" do
  it "returns http success" do
    get :index
    expect(response).to have_http_status(:success)
  end
end

  it "assigns [my_question] to @questions" do
    get :index
    expect(assigns(:questions)).to eq([my_question])
   end

  describe "GET show" do
    it "returns http success" do
     get :show, {id: my_question}
     expect(response).to have_http_status(:success)
   end
 end

 describe "GET new" do
   it "returns http success" do
     get :new, {id: my_question.id}
     expect(response).to have_http_status(:success)
   end
 end

 describe "GET create" do
   it "returns http success" do
     get :create
     expect(response).to have_http_status(:success)
   end
 end

end
