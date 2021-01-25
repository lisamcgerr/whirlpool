class AddColumnToCommunity < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :public, :boolean, default: false
  end
end
