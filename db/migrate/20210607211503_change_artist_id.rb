class ChangeArtistId < ActiveRecord::Migration[5.0]
  def change
    rename_column :songs, :arist_id, :artist_id
  end
end
