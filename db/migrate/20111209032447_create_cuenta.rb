class CreateCuenta < ActiveRecord::Migration
  def change
    create_table :cuenta do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
