json.array!(@riffblobs) do |riffblob|
  json.extract! riffblob, :id, :photo_name, :owner, :shoutout
  json.url riffblob_url(riffblob, format: :json)
end
