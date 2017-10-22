class CercaProductesController < ApplicationController
  before_action :set_cerca_producte, only: [:show, :edit, :update, :destroy]

  # GET /cerca_productes
  # GET /cerca_productes.json
  def index
    @cerca_productes = CercaProducte.all
  end

  # GET /cerca_productes/1
  # GET /cerca_productes/1.json
  def show
  end

  # GET /cerca_productes/new
  def new
    @cerca_producte = CercaProducte.new
  end

  # GET /cerca_productes/1/edit
  def edit
  end

  # POST /cerca_productes
  # POST /cerca_productes.json
  def create
    @cerca_producte = CercaProducte.new(cerca_producte_params)

    respond_to do |format|
      if @cerca_producte.save
        format.html { redirect_to @cerca_producte, notice: 'Cerca producte was successfully created.' }
        format.json { render :show, status: :created, location: @cerca_producte }
      else
        format.html { render :new }
        format.json { render json: @cerca_producte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cerca_productes/1
  # PATCH/PUT /cerca_productes/1.json
  def update
    respond_to do |format|
      if @cerca_producte.update(cerca_producte_params)
        format.html { redirect_to @cerca_producte, notice: 'Cerca producte was successfully updated.' }
        format.json { render :show, status: :ok, location: @cerca_producte }
      else
        format.html { render :edit }
        format.json { render json: @cerca_producte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cerca_productes/1
  # DELETE /cerca_productes/1.json
  def destroy
    @cerca_producte.destroy
    respond_to do |format|
      format.html { redirect_to cerca_productes_url, notice: 'Cerca producte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cerca_producte
      @cerca_producte = CercaProducte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cerca_producte_params
      params.require(:cerca_producte).permit(:cerca)
    end
end
