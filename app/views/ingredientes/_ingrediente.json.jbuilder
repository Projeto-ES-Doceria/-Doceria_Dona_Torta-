json.extract! ingrediente, :id, :nome, :descricao, :preco, :quantidade, :vencimento, :produto_id, :created_at, :updated_at
json.url ingrediente_url(ingrediente, format: :json)
