class CamarasController < ApplicationController
  # GET /camaras
  # GET /camaras.json
  def index
    @camaras = Camara.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @camaras }
    end
  end

  # GET /camaras/1
  # GET /camaras/1.json
  def show
    @camara = Camara.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @camara }
    end
  end

  # GET /camaras/new
  # GET /camaras/new.json
  def new
    @camara = Camara.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @camara }
    end
  end

  # GET /camaras/1/edit
  def edit
    @camara = Camara.find(params[:id])
  end

  # POST /camaras
  # POST /camaras.json
  def create
    @camara = Camara.new(params[:camara])

    respond_to do |format|
      if @camara.save
        format.html { redirect_to @camara, notice: 'Camara was successfully created.' }
        format.json { render json: @camara, status: :created, location: @camara }
      else
        format.html { render action: "new" }
        format.json { render json: @camara.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /camaras/1
  # PUT /camaras/1.json
  def update
    @camara = Camara.find(params[:id])

    respond_to do |format|
      if @camara.update_attributes(params[:camara])
        format.html { redirect_to @camara, notice: 'Camara was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @camara.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /camaras/1
  # DELETE /camaras/1.json
  def destroy
    @camara = Camara.find(params[:id])
    @camara.destroy

    respond_to do |format|
      format.html { redirect_to camaras_url }
      format.json { head :no_content }
    end
  end
end
