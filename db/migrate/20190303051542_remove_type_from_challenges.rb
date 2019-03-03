class RemoveTypeFromChallenges < ActiveRecord::Migration[5.2]
  def change
    remove_column :challenges, :type, :integer
    add_column :challenges, :category, :integer
  end
end
