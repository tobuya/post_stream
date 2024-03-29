class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes, foreign_key: :post_id, dependent: :destroy
  has_many :comments, foreign_key: :post_id, dependent: :destroy

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  after_create :update_author_posts_counter
  before_destroy :decrease_author_posts_counter

  def update_author_posts_counter
    author.increment!(:posts_counter)
  end

  def decrease_author_posts_counter
    author.decrement!(:posts_counter)
  end

  def get_recent_comments(limit_count = 5)
    comments.order(created_at: :desc).limit(limit_count)
  end
end
