class CreateLevel0Points < ActiveRecord::Migration[5.2]
  def change
    create_table :level0_points do |t|
      t.integer :points

      t.timestamps
    end
  end
end
