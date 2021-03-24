class RemovePlanFromUser < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :Plan
  end
end
