json.array!(@contacts) do |contact|
    json.id contact.id
    json.value contact.name
end