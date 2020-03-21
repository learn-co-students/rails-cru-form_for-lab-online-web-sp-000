class CreateGenresTable < ActiveRecord::Migration[5.0]
  def change
    create_table :genres_table do |t|
      t.string :name
    end
  end
end
