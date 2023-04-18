require 'rails_helper'

RSpec.describe 'User index page', type: :feature do
  let!(:user1) { User.create(name: 'Tobuya', bio: 'Engineer', photo: 'tobuya.jpg', posts_counter: 4) }
  let!(:user2) { User.create(name: 'Margaret', bio: 'Developer', photo: 'margaret.jpg', posts_counter: 10) }

  before do
    visit users_path
  end

  describe 'Page content' do
    it 'should display all usernames' do
      expect(page).to have_content(user1.name)
      expect(page).to have_content(user2.name)
    end

    it 'should display all profile pictures' do
      expect(page).to have_css("img[src='#{user1.photo}']")
      expect(page).to have_css("img[src='#{user2.photo}']")
    end

    it 'should display number of posts for each user' do
      expect(page).to have_content("Number of posts: #{user1.posts_counter}")
      expect(page).to have_content("Number of posts: #{user2.posts_counter}")
    end
  end

  describe 'Clicking on each user' do
    it "should redirect to user1's show page" do
      click_link user1.name
      expect(current_path).to eq user_path(user1)
    end

    it "should redirect to user2's show page" do
      click_link user2.name
      expect(current_path).to eq user_path(user2)
    end
  end
end
