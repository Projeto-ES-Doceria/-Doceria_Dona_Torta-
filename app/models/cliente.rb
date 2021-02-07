class Cliente < ApplicationRecord
  belongs_to :endereco

  accepts_nested_attributes_for :endereco, reject_if: :all_blank,allow_destroy: true

  validates_uniqueness_of :email
  validates :nome, :telefone,:celular,:email, presence: true
  validates_length_of :nome, minimum: 10
  validates_numericality_of :telefone,:celular
  validates_length_of :telefone,:celular,in:9..11
  validates_associated :endereco
end
