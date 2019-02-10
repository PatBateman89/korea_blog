class AddUserShotToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :user_shot, :string
  end
end
