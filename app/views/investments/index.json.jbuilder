json.array!(@investments) do |investment|
  json.extract! investment, :id, :project_id, :user_id, :value
  json.url investment_url(investment, format: :json)
end
