require 'rails_helper'

RSpec.describe Like, type: :model do
  it '#update_likes_counter should increase post_likes_counter by 1' do
    user1 = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.',
                        posts_counter: 5)
    post = Post.create(author: user1, title: 'Hello', text: 'This is my first post', likes_counter: 5,
                       comments_counter: 5)
    like = Like.create(post: post, user_id: user1)

    like.update_likes_counter
    check = post.reload.likes_counter

    expect(check).to eq(6)
  end
end
