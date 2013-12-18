class PendienteController < ApplicationController
  def pendientevista
	@pendientes_ordenados = Prestamo.where(:devuelto=> false).order(params[:sort],"created_at Desc")
  	 @a = Prestamo.where(:devuelto=> false)
  end
end
