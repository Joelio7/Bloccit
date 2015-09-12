require 'rails_helper'
 include RandomData

 RSpec.describe QuestionsController do
let (:my_question) {my_topic.questions.create!(title: RandomData.random_sentence , body: RandomData.random_paragraph, resolved: true || false ) }

describe "GET index" do
  it "returns http success" do
    get :index
    expect(response).to have_http_status(:success)
  end
end
end
#  it "assigns [my_question] to @questions" do
#    get :index
#    expect(assigns(:questions)).to eq([my_question])
  # end
#end

#describe "GET show" do
 #it "returns http success" do
# #16
  # get :show, {id: my_question.id}
   #expect(response).to have_http_status(:success)
 #end
#end
 #describe "GET #new" do
  # it "returns http success" do
  #   get :new
  #   expect(response).to have_http_status(:success)
   #end
 #end

 #describe "GET #create" do
  # it "returns http success" do
    # get :create
    # expect(response).to have_http_status(:success)
  # end
# end

#end
