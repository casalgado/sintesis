class CreateMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :media do |t|
      t.string :name
      t.string :media

      t.timestamps
    end
  end
end
