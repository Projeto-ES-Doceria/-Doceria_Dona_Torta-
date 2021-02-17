class Ingrediente < ApplicationRecord
  belongs_to :produto
  validates :nome, presence: true, length: {minimum: 4, maximum: 20}
  validates :descricao, presence: true
  validates :preco, presence: true
  validates :quantidade, numericality: {only_integer: true, greater_than: 0}
  validates :vencimento, presence: true
end
