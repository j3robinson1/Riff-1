json.array!(@riffblobs) do |riffblob|
  json.extract! riffblob, :id, :file, :owner, :shoutout
  json.url riffblob_url(riffblob, format: :json)
end
