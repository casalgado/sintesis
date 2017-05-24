class CreateAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :attachments do |t|
      t.string :content
      t.references :entry, foreign_key: true
      t.references :source, foreign_key: true

      t.timestamps
    end
  end
end
