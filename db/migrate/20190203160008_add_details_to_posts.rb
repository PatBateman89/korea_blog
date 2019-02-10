class AddDetailsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :company, :string
    add_column :posts, :start_date, :string
    add_column :posts, :working_times, :text
    add_column :posts, :pay, :string
    add_column :posts, :email, :string
    add_column :posts, :phone, :string
  end
end
