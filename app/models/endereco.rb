class Endereco < ApplicationRecord
  has_one :cliente, dependent: :destroy
  validates :rua,:numero,:bairro,:cidade,:cep,:estado,:complemento, presence:true
  validates_length_of :cep,minimum: 8,maximum:8
  validates_numericality_of :cep
end
