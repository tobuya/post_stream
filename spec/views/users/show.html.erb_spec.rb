require 'rails_helper'

RSpec.describe 'User show page', type: :feature do
  let!(:user) { User.create(name: 'Nyodero', bio: 'Teacher', photo: 'nyodero.jpg') }
  let!(:post1) { Post.create(title: 'Post1', text: 'Content for post 1', author: user) }
  let!(:post2) { Post.create(title: 'Post2', text: 'Content for post 2', author: user) }
  let!(:post3) { Post.create(title: 'Post3', text: 'Content for post 3', author: user) }
  let!(:post4) { Post.create(title: 'Post4', text: 'Content for post 4', author: user) }

  before do
    visit user_path(user)
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

    it "should display user's bio" do
      expect(page).to have_content(user.bio)
    end

    it "should display user's recent 3 posts" do
      expect(page).to have_content(post2.title)
      expect(page).to have_content(post3.title)
      expect(page).to have_content(post4.title)
    end

    it 'should display a button to view all posts' do
      expect(page).to have_button('See all posts')
    end
  end

  describe 'clicking a post' do
    it 'should redirect to show page for correct post' do
      click_link post3.title
      expect(current_path).to eq user_post_path(user, post3)
    end
  end

  describe 'clicking to see all posts' do
    it "should redirect to user's post's index page" do
      click_link 'See all posts'
      expect(current_path).to match user_posts_path(user).chomp('/')
    end
  end
end
