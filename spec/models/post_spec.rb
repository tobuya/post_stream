require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user1) do
    User.create(name: 'Rooney', photo: 'http//:www.image.com', bio: 'England all time top scorer and football legend',
                posts_counter: 0)
  end
  let(:post) { Post.create(author: user1, title: 'Hello', text: 'This is my first post') }

  it 'validates presence of title' do
    post.title = nil
    expect(post).not_to be_valid
  end

  it 'validates maximum length of title' do
    post.title = 'a' * 251
    expect(post).not_to be_valid
  end

  it 'comments_counter should be greater than or equal to zero' do
    comments_counter = post.comments.count

    expect(comments_counter).to be >= 0
  end

  it 'likes_counter should be greater than or equal to zero' do
    likes_counter = post.likes.count

    expect(likes_counter).to be >= 0
  end

  it '#update_post_counter should increase post_counter by 1' do
    expect { post.update_author_posts_counter }.to change { user1.posts_counter }.by(1)
  end

  describe '#recent_comments' do
    before do
      10.times do |c|
        Comment.create(text: "Comment #{c}", post_id: subject.id, author_id: 1)
      end
    end
  end

  it 'should return the 5 most recent comments' do
    expect(subject.get_recent_comments).to eq(subject.comments.order(created_at: :desc).limit(5))
  end
end
