json.extract! workload, :id, :name, :comments, :image_path, :score, :subject_id, :created_at, :updated_at
json.url workload_url(workload, format: :json)