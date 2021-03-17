class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Height, :integer
    add_column :users, :Weight, :integer
    add_column :users, :Plan, :string
    add_column :users, :Dob, :date
    add_column :users, :description, :text
    add_column :users, :experience, :integer
  end
end
