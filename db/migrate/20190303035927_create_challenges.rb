class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.integer :type

      t.timestamps
    end
    add_reference :challenges, :level, foreign_key: true
  end
end
