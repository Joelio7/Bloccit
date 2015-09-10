require 'rails_helper'
include RandomData
RSpec.describe Advertisement, type: :model do
  context "attributes" do
  let (:my_ad) { Advertisement.create!(title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_integer)}

    it "should respond to title" do
    expect(my_ad).to respond_to(:title)
    end
    it "should respond to body" do
      expect(my_ad).to respond_to(:copy)
    end
    it "should respond to price" do
      expect(my_ad).to respond_to(:price)
    end
  end
end
