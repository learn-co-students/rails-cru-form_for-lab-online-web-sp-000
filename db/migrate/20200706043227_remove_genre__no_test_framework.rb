class RemoveGenreNoTestFramework < ActiveRecord::Migration[5.0]
  def change
    remove_column :artists, :genre, :string
  end
end
