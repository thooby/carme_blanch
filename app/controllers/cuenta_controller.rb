class CuentaController < ApplicationController
    load_and_authorize_resource
  # GET /cuenta
  # GET /cuenta.json
  def index
    @cuenta = Cuentum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @cuenta }
    end
  end

  # GET /cuenta/1
  # GET /cuenta/1.json
  def show
    @cuentum = Cuentum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @cuentum }
    end
  end

  # GET /cuenta/new
  # GET /cuenta/new.json
  def new
    @cuentum = Cuentum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @cuentum }
    end
  end

  # GET /cuenta/1/edit
  def edit
    @cuentum = Cuentum.find(params[:id])
  end

  # POST /cuenta
  # POST /cuenta.json
  def create
    @cuentum = Cuentum.new(params[:cuentum])

    respond_to do |format|
      if @cuentum.save
        format.html { redirect_to @cuentum, :notice => 'Cuentum was successfully created.' }
        format.json { render :json => @cuentum, :status => :created, :location => @cuentum }
      else
        format.html { render :action => "new" }
        format.json { render :json => @cuentum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cuenta/1
  # PUT /cuenta/1.json
  def update
    @cuentum = Cuentum.find(params[:id])

    respond_to do |format|
      if @cuentum.update_attributes(params[:cuentum])
        format.html { redirect_to @cuentum, :notice => 'Cuentum was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @cuentum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cuenta/1
  # DELETE /cuenta/1.json
  def destroy
    @cuentum = Cuentum.find(params[:id])
    @cuentum.destroy

    respond_to do |format|
      format.html { redirect_to cuenta_url }
      format.json { head :ok }
    end
  end
end
