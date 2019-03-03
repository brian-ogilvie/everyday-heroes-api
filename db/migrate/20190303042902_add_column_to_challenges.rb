class AddColumnToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :intro_day, :integer
  end
end
