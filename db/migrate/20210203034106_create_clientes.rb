class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :telefone
      t.string :celular
      t.string :email
      t.references :enderecos, null: false, foreign_key: true

      t.timestamps
    end
  end
end
