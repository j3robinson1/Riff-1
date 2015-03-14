json.array!(@riff_photos) do |riff_photo|
  json.extract! riff_photo, :id, :photo_name, :owner, :shoutout
  json.url riff_photo_url(riff_photo, format: :json)
end
