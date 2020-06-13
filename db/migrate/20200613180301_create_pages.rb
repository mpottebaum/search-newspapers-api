class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :pdf
      t.string :date
      t.string :title_normal
      t.string :start_year
      t.string :end_year
      t.string :city
      t.string :state
      t.string :frequency
      t.string :publisher
      t.string :note

      t.timestamps
    end
  end
end
