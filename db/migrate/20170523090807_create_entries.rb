class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.date :date
      t.references :source, foreign_key: true
      t.string :orientation, default: "Left" # This should be placed only in image based entries
      t.timestamps
    end
  end
end
