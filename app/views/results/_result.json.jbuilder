json.extract! result, :id, :student_id, :name, :workload_id, :report_id, :created_at, :updated_at
json.url result_url(result, format: :json)