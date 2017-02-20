json.extract! subject, :id, :department_id, :subject_name, :created_at, :updated_at
json.url subject_url(subject, format: :json)