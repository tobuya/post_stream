require 'rails_helper'

RSpec.describe 'Post index page', type: :feature do
  let!(:user) { User.create(name: 'Kai', bio: 'Soccer Player', photo: 'kai.jpg') }
  let!(:post1) { Post.create(title: 'Post1', text: 'Content for post 1', author: user) }
  let!(:post2) { Post.create(title: 'Post2', text: 'Content for post 2', author: user) }
  let!(:post3) { Post.create(title: 'Post3', text: 'Content for post 3', author: user) }
  let!(:comment1) { Comment.create(author: user, post: post1, text: 'Comment 1') }
  let!(:comment2) { Comment.create(author: user, post: post1, text: 'Comment 2') }
  let!(:comment3) { Comment.create(author: user, post: post1, text: 'Comment 3') }

  before do
    visit user_posts_path(user)
  end

  describe 'Page content' do
    it "should display user's profile picture" do
      expect(page).to have_css("img[src='#{user.photo}']")
    end

    it "should display user's name" do
      expect(page).to have_content(user.name)
    end

    it 'should display number of posts' do
      expect(page).to have_content("Number of posts: #{user.posts_counter}")
    end

    it 'should display all post titles' do
      expect(page).to have_content(post1.title)
      expect(page).to have_content(post2.title)
      expect(page).to have_content(post3.title)
    end

    it "should display some of posts' content" do
      expect(page).to have_content(post1.text[0..100])
      expect(page).to have_content(post2.text[0..100])
      expect(page).to have_content(post3.text[0..100])
    end

    it 'should display recent comments on a post' do
      expect(page).to have_content(comment1.text)
      expect(page).to have_content(comment2.text)
      expect(page).to have_content(comment3.text)
    end

    it 'should display comment counts for each post' do
      expect(page).to have_content("Comments: #{post1.comments_counter}")
      expect(page).to have_content("Comments: #{post2.comments_counter}")
      expect(page).to have_content("Comments: #{post3.comments_counter}")
    end

    it 'should display total likes for a post' do
      3.times { Like.create(post: post1, author: user) }
      4.times { Like.create(post: post2, author: user) }
      5.times { Like.create(post: post3, author: user) }

      visit user_posts_path(user)

      expect(page).to have_content("Likes: #{post1.likes_counter}")
      expect(page).to have_content("Likes: #{post2.likes_counter}")
      expect(page).to have_content("Likes: #{post3.likes_counter}")
    end

    it 'should have a button for pagination' do
      expect(page).to have_button('Pagination')
    end
  end

  describe 'Clicking on a post' do
    it "should redirect to correct post's show page" do
      click_link post2.title
      expect(current_path).to eq user_post_path(user, post2)
    end
  end
end
