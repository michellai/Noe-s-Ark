json.array!(@sightings) do |sighting|
  json.extract! sighting, :id, :creatures_list, :timestamp, :location, :fieldnotes
  json.url sighting_url(sighting, format: :json)
end
