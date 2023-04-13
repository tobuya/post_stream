class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  after_save :update_comments_counter

  def update_comments_counter
    puts "Current post comments counter: #{post.comments_counter}"
    post.update(comments_counter: post.comments_counter + 1)
    puts "New post comments counter: #{post.comments_counter}"
  end
end
