class Persona < ActiveRecord::Base
	has_many :user
	has_many :prestamos

  attr_accessible :apellido, :documento, :nombre, :telefono, :persona_id, :user

validates_presence_of :nombre,:apellido,:message => " - COMPLETE LOS CAMPOS FALTANETES"
validates_uniqueness_of :documento ,:message=> " - YA EXISTE UNA PERSONA ASOCIADA A ESTE DNI" 
validates_length_of :telefono, :minimum => 10, :maximum => 10, :message=> " - INGRESE LOS 10 DIGITOS DEL TELEFONO" 
validates_length_of :documento, :minimum => 7, :maximum => 8, :message=> " - INGRESE LOS 8 DIGITOS DEL DNI" 



	def self.search(search)
		
   			find(:all, :conditions => ["documento LIKE ?", "#{search}"])

   			#else
	
	end


end