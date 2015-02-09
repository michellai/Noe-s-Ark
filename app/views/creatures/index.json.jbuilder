json.array!(@creatures) do |creature|
  json.extract! creature, :id, :common_name, :scientific_name, :photo, :sighting_datetime, :sighting_location, :notes
  json.url creature_url(creature, format: :json)
end
