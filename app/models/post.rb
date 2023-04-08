class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  validates :author, presence: true
  has_many :likes, inverse_of: 'post', dependent: :destroy
  has_many :comments, inverse_of: 'post', dependent: :destroy

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  after_save :update_author_posts_counter

  def update_author_posts_counter
    author.update(posts_counter: author.posts.count)
  end

  private

  def get_recent_comments(limit_count = 5)
    comments.order(created_at: :desc).limit(limit_count)
  end
end
