json.extract! document_register, :id, :name, :instrument_registrations_id, :document_file, :created_at, :updated_at
json.url document_register_url(document_register, format: :json)
