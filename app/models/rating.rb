# class Rating < ActiveRecord::Base
#   has_many :topics
#   has_many :posts
#   belongs_to :rateable, polymorphic: true
#
#   enum severity: [ :PG, :PG13, :R ]
#
#   def self.update_rating(rating)
#     Rating.find_or_create_by(severity: rating.to_i)
#   end
#     new_rating
#   end
