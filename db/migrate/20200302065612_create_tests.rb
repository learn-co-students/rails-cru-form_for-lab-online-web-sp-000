class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.string :field1
      t.string :field2

      t.timestamps
    end
  end
end
