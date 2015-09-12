# This file should contain all the record creation needed to seed the database with its default values.
include RandomData

15.times do
  Topic.create!(
  name:        RandomData.random_sentence,
  description: RandomData.random_paragraph
  )
end
topics = Topic.all

50.times do

  Post.create!(
    topic: topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph

  )
end

Post.find_or_create_by!(
  title:  "Unique post title",
  body:   "Unique post body"
)

posts = Post.all

100.times do
  Comment.create!(
    post:  posts.sample,
    body:  RandomData.random_paragraph
  )
end

Advertisement.create!(
title: 'New Advertisement',
copy: "New Copy",
price: 500
)
end
SponsoredPost.create!(
title: RandomData.random_sentence
body: RandomData.random_paragraph
price: RandomData.random_integer
)
end
puts "Seed finished"
puts "#{SponsoredPost.count} sponsored posts created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
