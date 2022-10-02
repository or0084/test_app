class AddTitleToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :title, :string, null: false
    add_column :posts, :body, :string, null: false
    add_column :posts, :user_id, :integer, null: false
  end
end
