class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.boolean :complete
      t.belongs_to :user, index: true
      t.belongs_to :daily_task, index: true

      t.timestamps
    end
  end
end
