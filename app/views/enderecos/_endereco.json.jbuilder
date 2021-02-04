json.extract! endereco, :id, :rua, :numero, :bairro, :cidade, :cep, :estado, :complemento, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
