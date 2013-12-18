class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.integer :documento
      t.string :nombre
      t.string :apellido
      t.integer :telefono

      t.timestamps
    end
  end
end
