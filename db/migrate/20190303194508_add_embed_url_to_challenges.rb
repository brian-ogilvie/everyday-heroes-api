class AddEmbedUrlToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :embed_url, :string
  end
end
