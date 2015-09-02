# This file should contain all the record creation needed to seed the database with its default values.
include RandomData


50.times do

  Post.create!(

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

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
