json.array!(@users) do |user|
  json.extract! user, :id, :name, :lastname, :identitydocument, :email, :password, :birthdate, :type, :status
  json.url user_url(user, format: :json)
end
