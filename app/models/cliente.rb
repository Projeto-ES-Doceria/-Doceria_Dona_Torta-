class Cliente < ApplicationRecord
  belongs_to :endereco

  validates_uniqueness_of :email
  validates :nome, :telefone,:celular,:email, presence: true
  validates_length_of :nome, minimum: 10
  validates_numericality_of :telefone
  validates_numericality_of :celular
  validates_associated :endereco
end
