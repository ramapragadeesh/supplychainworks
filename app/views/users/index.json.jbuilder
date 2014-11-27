json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :country, :contact_no, :org_name, :org_address, :password, :notification_email, :affiliation
  json.url user_url(user, format: :json)
end
