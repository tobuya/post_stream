class RemoveCommentsCounterFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :comments_counter, :integer
  end
end
