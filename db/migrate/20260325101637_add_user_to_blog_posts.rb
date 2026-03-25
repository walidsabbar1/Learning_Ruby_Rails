class AddUserToBlogPosts < ActiveRecord::Migration[7.1]
  def change
    add_reference :blog_posts, :user, null: true, foreign_key: true
  end
end
