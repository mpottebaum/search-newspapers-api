class CreateSavedPages < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_pages do |t|
      t.integer :folder_id
      t.integer :page_id

      t.timestamps
    end
  end
end
