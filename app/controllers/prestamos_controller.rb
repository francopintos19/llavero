class PrestamosController < ApplicationController
  # GET /prestamos
  # GET /prestamos.json
  def index
    @prestamos = Prestamo.all
    @prestamos_ordenados = Prestamo.order(params[:sort],"created_at Desc").limit(100)


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prestamos }
    end
  end

  # GET /prestamos/1
  # GET /prestamos/1.json
  def show
    @prestamo = Prestamo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prestamo }
    end
  end


  # GET /prestamos/new
  # GET /prestamos/new.json
  def new



    @prestamo = Prestamo.new
    @busqueda_llave = Key.where(:numero => (params[:search2]))
    @busqueda_persona = Persona.where(:documento => (params[:search]))
    
    # Prestamo donde la llave está prestada y el ID 
    #@no_devuelto = Prestamo.where(:devuelto=> false, :llave_id => @id_de_llave).exists?  



    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prestamo }
    end
  end

  # GET /prestamos/1/edit
  def edit
    @prestamo = Prestamo.find(params[:id])
  end

  # POST /prestamos
  # POST /prestamos.json
  def create
    @prestamo = Prestamo.new(params[:prestamo])
    @prestamo.usuario_id = current_user.id 
    respond_to do |format|
      if @prestamo.save

        format.html { redirect_to @prestamo,notice: 'Prestamo creado exitosamente.'}
        format.json { render json: @prestamo, status: :created, location: @prestamo }
      else
        format.html { render action: "new" }
        format.json { render json: @prestamo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prestamos/1
  # PUT /prestamos/1.json
  def update
    @prestamo = Prestamo.find(params[:id])

    respond_to do |format|
      if @prestamo.update_attributes(params[:prestamo])
        format.html { redirect_to @prestamo, notice: 'Prestamo actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prestamo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prestamos/1
  # DELETE /prestamos/1.json
  def destroy
    @prestamo = Prestamo.find(params[:id])
    @prestamo.destroy

    respond_to do |format|
      format.html { redirect_to prestamos_url }
      format.json { head :no_content }
    end
  end
end
