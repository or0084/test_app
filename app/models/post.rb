class Post < ApplicationRecord
  t.integer :user_id,null: false
  t.string :title,null: false
  t.string :body,null: false
end
