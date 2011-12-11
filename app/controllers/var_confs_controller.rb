class VarConfsController < ApplicationController
  # GET /var_confs
  # GET /var_confs.json
    load_and_authorize_resource
  def index
    @var_confs = VarConf.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @var_confs }
    end
  end

  # GET /var_confs/1
  # GET /var_confs/1.json
  def show
    @var_conf = VarConf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @var_conf }
    end
  end

  # GET /var_confs/new
  # GET /var_confs/new.json
  def new
    @var_conf = VarConf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @var_conf }
    end
  end

  # GET /var_confs/1/edit
  def edit
    @var_conf = VarConf.find(params[:id])
  end

  # POST /var_confs
  # POST /var_confs.json
  def create
    @var_conf = VarConf.new(params[:var_conf])

    respond_to do |format|
      if @var_conf.save
        format.html { redirect_to @var_conf, :notice => 'Var conf was successfully created.' }
        format.json { render :json => @var_conf, :status => :created, :location => @var_conf }
      else
        format.html { render :action => "new" }
        format.json { render :json => @var_conf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /var_confs/1
  # PUT /var_confs/1.json
  def update
    @var_conf = VarConf.find(params[:id])

    respond_to do |format|
      if @var_conf.update_attributes(params[:var_conf])
        format.html { redirect_to @var_conf, :notice => 'Var conf was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @var_conf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /var_confs/1
  # DELETE /var_confs/1.json
  def destroy
    @var_conf = VarConf.find(params[:id])
    @var_conf.destroy

    respond_to do |format|
      format.html { redirect_to var_confs_url }
      format.json { head :ok }
    end
  end
end
