json.array!(@business_details) do |business_detail|
  json.extract! business_detail, :id, :description, :website, :phone, :email, :facebook, :twitter, :business_id
  json.url business_detail_url(business_detail, format: :json)
end
