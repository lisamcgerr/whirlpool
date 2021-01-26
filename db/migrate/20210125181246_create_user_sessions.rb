class CreateUserSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :user_sessions do |t|
      t.references :user, null: false, foreign_key: {on_delete: :cascade} 
      t.references :session, null: false, foreign_key: {on_delete: :cascade} 

      t.timestamps
    end
  end
end
