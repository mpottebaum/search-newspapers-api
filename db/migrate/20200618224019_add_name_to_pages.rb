class AddNameToPages < ActiveRecord::Migration[6.0]
  def change
    add_column :pages, :name, :string
  end
end
