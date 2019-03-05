class CreateAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :content
      t.string :url
      t.string :embed_url

      t.timestamps
    end
  end
end
