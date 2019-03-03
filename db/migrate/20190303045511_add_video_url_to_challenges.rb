class AddVideoUrlToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :video_url, :string
  end
end
