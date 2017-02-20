json.extract! grade, :id, :grade_name, :teacher_id, :department_id, :created_at, :updated_at
json.url grade_url(grade, format: :json)
json.extract! department, :id, :department_name, :created_at, :updated_at
json.url department_url(department, format: :json)