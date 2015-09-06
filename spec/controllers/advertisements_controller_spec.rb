require 'rails_helper'

include RandomData
RSpec.describe AdvertisementsController, type: :controller do

  let (:my_ad) { Advertisement.create!(title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_integer) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_ad] to @advertisements" do
      get :index
      expect(assigns(:advertisements)).to eq([my_ad])
    end
  end

  describe "GET show" do
   it "returns http success" do
# #16
     get :show, {id: my_ad.id}
     expect(response).to have_http_status(:success)
   end
 end
  # describe "GET #new" do
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
