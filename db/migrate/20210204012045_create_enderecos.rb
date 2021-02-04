class CreateEnderecos < ActiveRecord::Migration[6.0]
  def change
    create_table :enderecos do |t|
      t.string :rua
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.integer :cep
      t.string :estado
      t.string :complemento

      t.timestamps
    end
  end
end
