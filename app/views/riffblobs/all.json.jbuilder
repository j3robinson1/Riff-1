json.riffblobs @riffblobs do |blob|
  json.id blob.id
  json.pointer blob.pointer
  json.url blob.url
  json.shoutout blob.shoutout
  json.profiles @profiles do |profile|
    json.avatar profile.avatar
    json.name profile.firstName
  end
  json.childs blob.childs do |blobby|
    json.id blobby.id
    json.pointer blobby.pointer
    json.url blobby.url
    json.shoutout blobby.shoutout
  end
end