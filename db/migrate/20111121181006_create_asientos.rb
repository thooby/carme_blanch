class CreateAsientos < ActiveRecord::Migration
  def change
    create_table :asientos do |t|
      t.date :fecha
      t.integer :tipo_id
      t.integer :categorium_id
      t.string :descripcion
      t.decimal :monto
      t.string :observaciones

      t.timestamps
    end
  end
end
