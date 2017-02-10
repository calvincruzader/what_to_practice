json.extract! song, :id, :composer_id, :video_info, :collection, :type, :instrumentation, :key, :rcm_grade, :henle_grade, :abrsm_grade, :created_at, :updated_at
json.url song_url(song, format: :json)