json.array!(@things) do |thing|
  json.extract! thing, :id, :name, :description, :creator_id, :creator_type, :type_id
  json.url thing_url(thing, format: :json)
end
