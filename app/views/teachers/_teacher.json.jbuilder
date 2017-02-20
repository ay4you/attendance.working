json.extract! teacher, :id, :fullname, :email, :title, :user_id, :mobile_number, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)