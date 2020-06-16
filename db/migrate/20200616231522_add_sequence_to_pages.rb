class AddSequenceToPages < ActiveRecord::Migration[6.0]
  def change
    add_column :pages, :sequence, :integer
  end
end
