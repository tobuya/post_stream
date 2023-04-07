class Post < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
end
