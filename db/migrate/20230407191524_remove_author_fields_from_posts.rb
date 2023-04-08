class RemoveAuthorFieldsFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :author_id, :integer
    # remove_column :posts, :author, :string
  end
end
