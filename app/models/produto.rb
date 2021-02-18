class Produto < ApplicationRecord
  has_many :ingredientes, dependent: :destroy
  validates :nome, presence: true, uniqueness: true, length: {minimum: 4, maximum: 20}
  validates :descricao, presence: true
  validates :fabricacao, presence: true
  validates :vencimento, presence: true
  validates :quantidade, numericality: {only_integer: true, greater_than: 0}
  validates :preco, presence: true
end
