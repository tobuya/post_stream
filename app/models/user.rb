class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'

  def get_recent_posts(limit_count = 3)
    posts.order(created_at: :desc).limit(limit_count)
  end
end
