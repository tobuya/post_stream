require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it 'validates presence of name' do
      user = User.new(name: nil, photo: 'http//:www.photo.com', bio: 'Manchester United Legend',
                      posts_counter: 0)
      expect(user.valid?).to be_falsey
    end

    it 'validates name is not empty' do
      user = User.new(name: '', photo: 'http//:www.photo.com', bio: 'Manchester United Legend',
                      posts_counter: 0)
      expect(user.valid?).to be_falsey
    end
  end

  RSpec::Matchers.define :be_ordered_by do |expected|
    match do |actual|
      actual.order(expected.to_s).to_a == actual.to_a
    end
  end

  context '#recent_posts' do
    it 'returns up to 3 posts, ordered by created_at in descending order' do
      user = User.create!(name: 'Rooney', photo: 'http//:www.image.com', bio: 'England and Manchester United Legend',
                          posts_counter: 0)
      Post.create(author: user, title: 'Hello', text: 'This is my first post')
      Post.create(author: user, title: 'Hello', text: 'This is my second post')
      Post.create(author: user, title: 'Hello', text: 'This is my third post')
      Post.create(author: user, title: 'Hello', text: 'This is my fourth post')
      Post.create(author: user, title: 'Hello', text: 'This is my fifth post')
      recent_posts = user.get_recent_posts

      expect(recent_posts.size).to be <= 3
      expect(recent_posts).to be_ordered_by('created_at DESC')
    end
  end
end
