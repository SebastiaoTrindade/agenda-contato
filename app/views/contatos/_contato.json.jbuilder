json.extract! contato, :id, :nome, :email, :tipo_id, :rmk, :created_at, :updated_at
json.url contato_url(contato, format: :json)
