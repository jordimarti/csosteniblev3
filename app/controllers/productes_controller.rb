class ProductesController < ApplicationController
  before_action :set_producte, only: [:show, :edit, :update, :destroy]

  # GET /productes
  # GET /productes.json
  def index
    @productes = Producte.all
  end

  # GET /productes/1
  # GET /productes/1.json
  def show
  end

  # GET /productes/new
  def new
    @producte = Producte.new
  end

  # GET /productes/1/edit
  def edit
  end

  # POST /productes
  # POST /productes.json
  def create
    @producte = Producte.new(producte_params)

    respond_to do |format|
      if @producte.save
        format.html { redirect_to @producte, notice: 'Producte was successfully created.' }
        format.json { render :show, status: :created, location: @producte }
      else
        format.html { render :new }
        format.json { render json: @producte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productes/1
  # PATCH/PUT /productes/1.json
  def update
    respond_to do |format|
      if @producte.update(producte_params)
        format.html { redirect_to @producte, notice: 'Producte was successfully updated.' }
        format.json { render :show, status: :ok, location: @producte }
      else
        format.html { render :edit }
        format.json { render json: @producte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productes/1
  # DELETE /productes/1.json
  def destroy
    @producte.destroy
    respond_to do |format|
      format.html { redirect_to productes_url, notice: 'Producte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producte
      @producte = Producte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producte_params
      params.require(:producte).permit(:id_ps, :nom_ca, :nom_es, :descripcio_ca, :descripcio_es, :caracteristiques_ca, :caracteristiques_es, :aplicacio_ca, :aplicacio_es, :disponibilitat_ca, :disponibilitat_es, :destacats_ca, :destacats_es, :valoracio, :ambit, :ecoetiqueta, :ecoetiqueta2, :visible, :img_petita, :img1, :nom_doc1_ca, :nom_doc1_es)
    end
end
