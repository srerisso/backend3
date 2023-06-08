class MatricesMovimientosController < ApplicationController
  before_action :set_matrices_movimiento, only: %i[ show edit update destroy ]

  # GET /matrices_movimientos or /matrices_movimientos.json
  def index
    @matrices_movimientos = MatricesMovimiento.all
  end

  # GET /matrices_movimientos/1 or /matrices_movimientos/1.json
  def show
  end

  # GET /matrices_movimientos/new
  def new
    @matrices_movimiento = MatricesMovimiento.new
  end

  # GET /matrices_movimientos/1/edit
  def edit
  end

  # POST /matrices_movimientos or /matrices_movimientos.json
  def create
    @matrices_movimiento = MatricesMovimiento.new(matrices_movimiento_params)

    respond_to do |format|
      if @matrices_movimiento.save
        format.html { redirect_to matrices_movimiento_url(@matrices_movimiento), notice: "Matrices movimiento was successfully created." }
        format.json { render :show, status: :created, location: @matrices_movimiento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @matrices_movimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matrices_movimientos/1 or /matrices_movimientos/1.json
  def update
    respond_to do |format|
      if @matrices_movimiento.update(matrices_movimiento_params)
        format.html { redirect_to matrices_movimiento_url(@matrices_movimiento), notice: "Matrices movimiento was successfully updated." }
        format.json { render :show, status: :ok, location: @matrices_movimiento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @matrices_movimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrices_movimientos/1 or /matrices_movimientos/1.json
  def destroy
    @matrices_movimiento.destroy

    respond_to do |format|
      format.html { redirect_to matrices_movimientos_url, notice: "Matrices movimiento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matrices_movimiento
      @matrices_movimiento = MatricesMovimiento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def matrices_movimiento_params
      params.require(:matrices_movimiento).permit(:matrix, :published_at, :created_by, :updated_by, :cliente, :FechaMovimiento, :Comentarios, :Quien, :Movimiento, :matriz)
    end
end
