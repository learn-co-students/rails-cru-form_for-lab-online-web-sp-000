class RemoveSongIdFromSongs < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :song_id, :integer
  end
end
