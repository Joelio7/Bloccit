class Rating < ActiveRecord::Base
  has_many :topics
  has_many :posts
  belongs_to :rateable, polymorphic: true

  enum severity: [ :PG, :PG13, :R ]

end
