class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.string :descripcion
      t.string :numero
    

      t.timestamps
    end
  end
end
