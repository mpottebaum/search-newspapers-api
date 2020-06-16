class AddLccnToPages < ActiveRecord::Migration[6.0]
  def change
    add_column :pages, :lccn, :string
  end
end
