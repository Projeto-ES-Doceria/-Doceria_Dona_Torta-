class Produto < ApplicationRecord
  has_many :ingredientes
  validates :nome, presence: true, uniqueness: true, length: {min: 4, max: 20}
  validates :descricao, presence: true
  validates :fabricacao, presence: true
  validates :vencimento, presence: true
  validates :quantidade, numericality: {only_integer: true, greater_than: 0}
  validates :preco, presence: true
end
