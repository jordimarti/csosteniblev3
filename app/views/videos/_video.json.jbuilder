json.extract! video, :id, :titol_ca, :resum_ca, :permalink_ca, :contingut_ca, :titol_es, :resum_es, :permalink_es, :contingut_es, :categoria, :created_at, :updated_at
json.url video_url(video, format: :json)
