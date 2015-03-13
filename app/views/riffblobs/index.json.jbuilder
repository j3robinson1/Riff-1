json.array!(@riffblobs) do |riffblob|
  json.extract! riffblob, :id, :name, :scr, :_id
  json.url riffblob_url(riffblob, format: :json)
end
