class CreateVarConfs < ActiveRecord::Migration
  def change
    create_table :var_confs do |t|
      t.string :titulo
      t.string :name_foto

      t.timestamps
    end
  end
end
