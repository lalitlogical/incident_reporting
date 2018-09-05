json.extract! incident_attachment, :id, :incident_id, :avatar, :created_at, :updated_at
json.url incident_attachment_url(incident_attachment, format: :json)
