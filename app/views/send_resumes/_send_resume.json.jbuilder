json.extract! send_resume, :id, :receiver, :created_at, :updated_at
json.url send_resume_url(send_resume, format: :json)
