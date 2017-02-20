json.extract! report, :id, :name, :semester, :class_year, :subject_id, :student_id, :created_at, :updated_at
json.url report_url(report, format: :json)