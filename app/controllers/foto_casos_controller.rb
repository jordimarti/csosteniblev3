class FotoCasosController < ApplicationController
  before_action :set_foto_cas, only: [:show, :edit, :update, :destroy]

  # GET /foto_casos
  # GET /foto_casos.json
  def index
    @foto_casos = FotoCas.all
  end

  # GET /foto_casos/1
  # GET /foto_casos/1.json
  def show
  end

  # GET /foto_casos/new
  def new
    @foto_cas = FotoCas.new
  end

  # GET /foto_casos/1/edit
  def edit
  end

  # POST /foto_casos
  # POST /foto_casos.json
  def create
    @foto_cas = FotoCas.new(foto_cas_params)

    respond_to do |format|
      if @foto_cas.save
        format.html { redirect_to @foto_cas, notice: 'Foto cas was successfully created.' }
        format.json { render :show, status: :created, location: @foto_cas }
      else
        format.html { render :new }
        format.json { render json: @foto_cas.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foto_casos/1
  # PATCH/PUT /foto_casos/1.json
  def update
    respond_to do |format|
      if @foto_cas.update(foto_cas_params)
        format.html { redirect_to @foto_cas, notice: 'Foto cas was successfully updated.' }
        format.json { render :show, status: :ok, location: @foto_cas }
      else
        format.html { render :edit }
        format.json { render json: @foto_cas.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foto_casos/1
  # DELETE /foto_casos/1.json
  def destroy
    @foto_cas.destroy
    respond_to do |format|
      format.html { redirect_to foto_casos_url, notice: 'Foto cas was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foto_cas
      @foto_cas = FotoCas.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foto_cas_params
      params.require(:foto_cas).permit(:image_data, :cas_practic_id, :text_ca, :text_es, :text_en, :image)
    end
end
