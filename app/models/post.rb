class Post < ActiveRecord::Base


  has_one :rating
  after_create :create_vote

  belongs_to :topic
  belongs_to :user
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
  has_many :votes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: {minimum: 20 }, presence: true
  validates :topic, presence: true
  validates :user, presence: true



  default_scope { order('rank DESC') }
 # #15
   scope :visible_to, -> (user) { user ? all : joins(:topic).where('topics.public' => true) }

    scope :ordered_by_title,  -> { reorder(title: :asc) }
    scope :ordered_by_reverse_created_at, -> { reorder(created_at: :asc)}

  def up_votes
    votes.where(value: 1).count
  end

  def down_votes
    votes.where(value: -1).count
  end

  def points
    votes.sum(:value)
  end

  def update_rank
    age_in_days = (created_at - Time.new(1970,1,1)) / 1.day.seconds
    new_rank = points + age_in_days
    update_attribute(:rank, new_rank)
  end



private

  def create_vote
    user.votes.create(post: self, value: 1)
  end


  private

  # def new_post
  #   post.favorites.each do |favorite|
  #     FavoriteMailer.new_favorite(favorite.user, post, self).deliver_now
  #   end
  #
  # end

end
