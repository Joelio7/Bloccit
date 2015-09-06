require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "attributes" do
    let(:topic) { Post.create!(title: "New Post Title", body: "New Post Body") }
    let (:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }
    let(:comment) { Comment.create!(body: 'Comment Body', post: post) }

    RSpec.describe Comment, type: :model do
      describe "attributes" do
    

    it "should respond to body" do
      expect(comment).to respond_to(:body)
    end
  end
end
