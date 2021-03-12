class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.integer :calories
      t.integer :proteins
      t.integer :fats
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
