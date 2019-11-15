json.extract! video, :id, :email, :user_id, :link, :description, :title, :published_at, :likes, :dislikes, :created_at, :updated_at
json.url video_url(video, format: :json)
