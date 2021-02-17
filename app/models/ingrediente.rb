class Ingrediente < ApplicationRecord
  belongs_to :produto
  validates :nome, presence: true, length: {min: 4, max: 20}
  validates :descricao, presence: true
  validates :preco, presence: true
  validates :quantidade, numericality: {only_integer: true, greater_than: 0}
  validates :vencimento, presence: true
end
