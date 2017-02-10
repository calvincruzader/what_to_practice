class AddNameToComposer < ActiveRecord::Migration[5.0]
  def change
    add_column :composers, :name, :string
  end
end
