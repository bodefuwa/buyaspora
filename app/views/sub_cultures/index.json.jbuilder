json.array!(@sub_cultures) do |sub_culture|
  json.extract! sub_culture, :id, :culture_id
  json.url sub_culture_url(sub_culture, format: :json)
end
