json.extract! customer, :id, :reason, :cnpj, :phone, :mayor, :cpf_mayor, :city_hall, :created_at, :updated_at
json.url customer_url(customer, format: :json)
