class AddColumnsToGame < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :price, :float
    add_column :games, :min_age, :integer
    add_column :games, :description, :text
    add_column :games, :avg_playtime, :float
    add_column :games, :rules, :string
  end
end
