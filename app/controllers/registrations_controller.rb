class RegistrationsController < Devise::RegistrationsController
 
 prepend_before_filter :require_no_authentication, :only => []
  prepend_before_filter :authenticate_scope!

  # GET /resource/sign_up
  def new
    #Niega el acceso SIN ESTAR LOGEADO
    authenticate_user!(:force => true)

    build_resource({})
    respond_with self.resource
  end

  

  # POST /resource
  def create
    super
    flash[:notice] = "Se ha creado un nuevo usuario!"
  end

  def sign_up(resource_name, resource)
 
  end
 
  end