class TiposController < ApplicationController
  # GET /tipos
  # GET /tipos.json
    load_and_authorize_resource 
  def index
    @tipos = Tipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @tipos }
    end
  end

  # GET /tipos/1
  # GET /tipos/1.json
  def show
    @tipo = Tipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @tipo }
    end
  end

  # GET /tipos/new
  # GET /tipos/new.json
  def new
    @tipo = Tipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @tipo }
    end
  end

  # GET /tipos/1/edit
  def edit
    @tipo = Tipo.find(params[:id])
  end

  # POST /tipos
  # POST /tipos.json
  def create
    @tipo = Tipo.new(params[:tipo])

    respond_to do |format|
      if @tipo.save
        format.html { redirect_to @tipo, :notice => 'Tipo was successfully created.' }
        format.json { render :json => @tipo, :status => :created, :location => @tipo }
      else
        format.html { render :action => "new" }
        format.json { render :json => @tipo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipos/1
  # PUT /tipos/1.json
  def update
    @tipo = Tipo.find(params[:id])

    respond_to do |format|
      if @tipo.update_attributes(params[:tipo])
        format.html { redirect_to @tipo, :notice => 'Tipo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @tipo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos/1
  # DELETE /tipos/1.json
  def destroy
    @tipo = Tipo.find(params[:id])
    @tipo.destroy

    respond_to do |format|
      format.html { redirect_to tipos_url }
      format.json { head :ok }
    end
  end
end
