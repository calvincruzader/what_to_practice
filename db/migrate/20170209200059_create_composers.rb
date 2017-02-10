class CreateComposers < ActiveRecord::Migration[5.0]
  def change
    drop_table :composers
    create_table :composers do |t|

      t.timestamps
    end
  end
end
