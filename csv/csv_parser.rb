require 'csv'
require 'sqlite3'

counter = 0
CSV.foreach("./classical_music_db_file.csv") do |row|
  composer_name = row[0]
  composer_songs_href = row[1]
  song_name = row[2]
  song_details_href = row[3]
  composer_and_song_name = row[4]
  song_type = row[5]
  instrumentation = row[6]
  key = row[7]
  collection = row[8]
  rcm_grade = row[9]
  abrsm_grade = row[10]
  henle_grade = row[11]
#attr_accessor :collection, :type, :key, :rcm_grade, :henle_grade, :abrsm_grade
  composer = Composer.create(name: composer_name, song: song_name)
  song = Song.create(name: song_name, collection: collection, type: type, key: key, rcm_grade: rcm_grade, abrsm_grade: abrsm_grade,
    henle_grade: henle_grade)

  counter += 1
end