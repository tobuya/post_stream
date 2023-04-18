require 'rails_helper'

RSpec.describe 'Post show page', type: :feature do
  let!(:user) { User.create(name: 'Kai', bio: 'Soccer player', photo: 'kai.jpg') }
  let!(:post) { Post.create(title: 'Post1', text: 'Content for post 1', author: user) }
  let!(:comment) { Comment.create(author: user, post: post, text: 'Comment 1') }
  let!(:likes) { Like.create(author: user, post: post) }

  before do
    visit user_post_path(user, post)
  end

  describe 'Page content' do
    it "should display post's title" do
      expect(page).to have_content(post.title)
    end

    it "should display user's name" do
      expect(page).to have_content(user.name)
    end

    it 'should display post body' do
      expect(page).to have_content(post.text)
    end

    it 'should display the username of each commentor' do
      expect(page).to have_content(comment.author.name)
    end

    it 'should display the comments each commentor left' do
      expect(page).to have_content(comment.text)
    end

    it 'should display comment counts for each post' do
      expect(page).to have_content("Comments: #{post.comments_counter}")
    end

    it 'should display total likes for a post' do
      expect(page).to have_content("Likes:#{post.likes_counter}")
    end
  end
end
