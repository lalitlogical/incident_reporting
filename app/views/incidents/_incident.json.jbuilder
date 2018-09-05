json.extract! incident, :id, :school_name, :incident_type, :incident, :name, :email_or_phone, :role, :people_involved, :observers, :observed_at, :location, :location_details, :description, :created_at, :updated_at
json.url incident_url(incident, format: :json)
