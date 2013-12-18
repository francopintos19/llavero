class Key < ActiveRecord::Base
	has_many :prestamo
  attr_accessible  :descripcion, :numero


validates_presence_of :numero,:descripcion, :message=> "- COMPLETE LOS CAMPOS FALTANTES"
validates_uniqueness_of :numero,:message =>"- YA EXISTE ESTA LLAVE"

end
