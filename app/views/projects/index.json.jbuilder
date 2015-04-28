json.array!(@projects) do |project|
  json.extract! project, :id, :name, :slogan, :description, :value, :term, :video_link, :category_id, :user_id
  json.url project_url(project, format: :json)
end
