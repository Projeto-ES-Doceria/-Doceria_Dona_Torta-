class Endereco < ApplicationRecord
  has_one :cliente,dependent: :destroy
  validates :rua, :numero, :bairro, :cidade, :cep, :estado,:complemento,presence:true
  validates_length_of :cep, maximum: 8, minimum: 8
  validates_numericality_of :cep
end
