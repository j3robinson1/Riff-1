json.profiles @profiles do |profile|
json.extract! profile, :avatar
json.extract! profile, :firstName
end