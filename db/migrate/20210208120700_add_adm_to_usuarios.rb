class AddAdmToUsuarios < ActiveRecord::Migration[6.0]
  def change
    add_column :usuarios, :adm, :boolean
  end
end
