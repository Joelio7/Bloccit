class Post < ActiveRecord::Base

  has_one :rating
  belongs_to :topic
  belongs_to :user
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
    has_many :comments, dependent: :destroy
    validates :title, length: { minimum: 5 }, presence: true
    validates :body, length: {minimum: 20 }, presence: true
    validates :topic, presence: true
    validates :user, presence: true

    default_scope  { order(created_at: :desc) }

    scope :ordered_by_title,  -> { reorder(title: :asc) }
    scope :ordered_by_reverse_created_at, -> { reorder(created_at: :asc)}
end
