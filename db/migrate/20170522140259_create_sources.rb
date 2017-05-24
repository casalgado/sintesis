class CreateSources < ActiveRecord::Migration[5.1]
  def change
    create_table :sources do |t|
      t.belongs_to :medium
      t.belongs_to :user
      t.string :name
      t.string :codename

      t.timestamps
    end
  end
end
