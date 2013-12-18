class CreatePrestamos < ActiveRecord::Migration
  def change
    create_table :prestamos do |t|
      t.integer :usuario_id
      t.integer :persona_id
      t.integer :llave_id
      t.datetime :fecha
      t.boolean :devuelto

      t.timestamps
    end
  end
end
