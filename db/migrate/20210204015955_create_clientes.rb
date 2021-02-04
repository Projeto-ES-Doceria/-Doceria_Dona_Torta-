class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes, if_not_exists: true do |t|
      t.string :nome
      t.string :telefone
      t.string :celular
      t.string :email
      t.references :endereco, null: false, foreign_key: true

      t.timestamps
    end
  end
end
