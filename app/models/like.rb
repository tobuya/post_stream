class Like < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post, counter_cache: true

  after_create :update_likes_counter

  private

  def update_likes_counter
    post.update(likes_count: post.likes.count)
  end
end
