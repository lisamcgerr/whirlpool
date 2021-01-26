class AddColumnToSession < ActiveRecord::Migration[6.1]
  def change
    add_column :sessions, :public, :boolean, default: false
  end
end
