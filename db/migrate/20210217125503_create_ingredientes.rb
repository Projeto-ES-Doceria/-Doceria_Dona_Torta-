class CreateIngredientes < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredientes do |t|
      t.string :nome
      t.text :descricao
      t.decimal :preco
      t.integer :quantidade
      t.date :vencimento
      t.references :produto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
