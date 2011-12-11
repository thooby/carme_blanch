class AddColumnCuentas < ActiveRecord::Migration
  def up
    add_column :cuenta, :moneda, :string
  end

  def down
    remove_column :cuenta, :moneda
  end
end
