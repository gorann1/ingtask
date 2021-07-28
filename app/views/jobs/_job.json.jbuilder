json.extract! job, :id, :title, :description, :url, :category, :location, :job_author, :author_email, :expire, :created_at, :updated_at
json.url job_url(job, format: :json)
