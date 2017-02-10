class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    drop_table :songs
    create_table :songs do |t|
      t.references :composer, foreign_key: true
      t.string :video_info
      t.string :collection
      t.string :type
      t.string :instrumentation
      t.string :key
      t.string :rcm_grade
      t.string :henle_grade
      t.string :abrsm_grade

      t.timestamps
    end
  end
end
