class ChangeArtistIdDataTypeToSongs < ActiveRecord::Migration[5.0]
  def change
    change_column :songs, :artist_id, :integer
  end
end
