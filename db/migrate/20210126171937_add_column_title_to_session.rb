class AddColumnTitleToSession < ActiveRecord::Migration[6.1]
  def change
    add_column :sessions, :title, :string
  end
end
