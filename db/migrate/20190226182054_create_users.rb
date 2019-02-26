class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :screen_name

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :screen_name, unique: true
  end
end
