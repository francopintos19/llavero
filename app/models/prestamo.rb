class Prestamo < ActiveRecord::Base
	belongs_to :key, :foreign_key => 'llave_id'
	belongs_to :user, :foreign_key => 'usuario_id'
	belongs_to :persona, :foreign_key => 'persona_id'

validates :llave_id, :presence => true 

validates :persona_id, :presence => true


attr_accessible :devuelto, :fecha, :llave_id, :persona_id, :usuario_id


end
