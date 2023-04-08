require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#update_comments_counter' do
    let!(:user1) { User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.', posts_counter: 5) }
    let!(:post) do
      Post.create(author: user1, title: 'Hello', text: 'This is my first post', likes_counter: 5, comments_counter: 5)
    end
    let!(:comment) { Comment.create(user_id: user1.id, post_id: post.id, text: 'Greetings Tom!') }

    it 'increments comments_counter by 1' do
      puts "Before: #{post.comments_counter}"
      comment.update_comments_counter
      puts "After: #{post.comments_counter}"
      expect(post.comments_counter).to eq(5)
    end
  end
end
