class CreatePageLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :page_languages do |t|
      t.integer :language_id
      t.integer :page_id

      t.timestamps
    end
  end
end
