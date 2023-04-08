class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  validates :author, presence: true
  has_many :likes, inverse_of: 'post', dependent: :destroy
  has_many :comments, inverse_of: 'post', dependent: :destroy

  after_create :update_author_posts_counter

  private

  def update_author_posts_counter
    author.increment!(:posts_counter)
  end
end
