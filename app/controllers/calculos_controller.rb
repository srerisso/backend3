class CalculosController < ApplicationController
  before_action :set_calculo, only: %i[ show edit update destroy ]

  # GET /calculos or /calculos.json
  def index
    @calculos = Calculo.order(proyecto_id: :desc).page params[:page]
  end

  # GET /calculos/1 or /calculos/1.json
  def show
  end

  # GET /calculos/new
  def new
    @calculo = Calculo.new
  end

  # GET /calculos/1/edit
  def edit
  end

  # POST /calculos or /calculos.json
  def create
    @calculo = Calculo.new(calculo_params)

    respond_to do |format|
      if @calculo.save
        format.html { redirect_to calculo_url(@calculo), notice: "Calculo was successfully created." }
        format.json { render :show, status: :created, location: @calculo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @calculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calculos/1 or /calculos/1.json
  def update
    respond_to do |format|
      if @calculo.update(calculo_params)
        format.html { redirect_to calculo_url(@calculo), notice: "Calculo was successfully updated." }
        format.json { render :show, status: :ok, location: @calculo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @calculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calculos/1 or /calculos/1.json
  def destroy
    @calculo.destroy

    respond_to do |format|
      format.html { redirect_to calculos_url, notice: "Calculo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calculo
      @calculo = Calculo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calculo_params
      params.require(:calculo).permit(:proyecto_id, :acabado, :descuento, :importe_perfiles, :importe_accesorios, :importe_total_neto, :observaciones, :fecha_calculo, :carpinteria)
    end
end
