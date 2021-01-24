class CreateAgendas < ActiveRecord::Migration[6.0]
  def change
    create_table :agendas do |t|
      t.text :mensagem

      t.timestamps
    end
  end
end
