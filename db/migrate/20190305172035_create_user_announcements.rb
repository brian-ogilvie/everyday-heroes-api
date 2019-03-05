class CreateUserAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :user_announcements do |t|
      t.belongs_to :user, index: true
      t.belongs_to :announcement, index: true
      t.boolean :delivered, default: false

      t.timestamps
    end
  end
end
