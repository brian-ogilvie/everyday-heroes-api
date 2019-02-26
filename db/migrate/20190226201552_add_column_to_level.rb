class AddColumnToLevel < ActiveRecord::Migration[5.2]
  def change
    add_column :levels, :num, :integer
    add_index :levels, :num, unique: true
  end
end
