class AsientosController < ApplicationController
  # GET /asientos
  # GET /asientos.json
  def index
    @asientos = Asiento.find(:all, :order => "fecha ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @asientos }
    end
  end

  # GET /asientos/1
  # GET /asientos/1.json
  def show
    @asiento = Asiento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @asiento }
    end
  end

  # GET /asientos/new
  # GET /asientos/new.json
  def new
    @asiento = Asiento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @asiento }
    end
  end

  # GET /asientos/1/edit
  def edit
    @asiento = Asiento.find(params[:id])
  end

  # POST /asientos
  # POST /asientos.json
  def create
    @asiento = Asiento.new(params[:asiento])

    respond_to do |format|
      if @asiento.save
        format.html { redirect_to @asiento, :notice => 'El apunte fue creado.' }
        format.json { render :json => @asiento, :status => :created, :location => @asiento }
      else
        format.html { render :action => "new" }
        format.json { render :json => @asiento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /asientos/1
  # PUT /asientos/1.json
  def update
    @asiento = Asiento.find(params[:id])

    respond_to do |format|
      if @asiento.update_attributes(params[:asiento])
        format.html { redirect_to @asiento, :notice => 'El apunte fue cambiado.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @asiento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /asientos/1
  # DELETE /asientos/1.json
  def destroy
    @asiento = Asiento.find(params[:id])
    @asiento.destroy

    respond_to do |format|
      format.html { redirect_to asientos_url }
      format.json { head :ok }
    end
  end
end
