class RemoveColumnFromAssignments < ActiveRecord::Migration[5.2]
  def change
    remove_column :assignments, :complete, :boolean
  end
end
