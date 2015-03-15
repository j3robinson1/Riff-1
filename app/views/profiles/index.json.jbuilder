json.array!(@profiles) do |profile|
  json.extract! profile, :id, :firstName, :lastNmae, :birthDate, :status, :address1, :address2, :city, :state, :zip, :Cell, :Home
  json.url profile_url(profile, format: :json)
end
