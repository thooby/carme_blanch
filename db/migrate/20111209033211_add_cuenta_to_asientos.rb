class AddCuentaToAsientos < ActiveRecord::Migration
  def up
    add_column :asientos, :cuentum_id, :string
  end
  def down
    remove_column :asientos, :cuentum_id 
  end
end
