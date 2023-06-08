class MatricesController < ApplicationController
  before_action :set_matrix, only: %i[ show edit update destroy ]

  # GET /matrices or /matrices.json
  def index
    @matrices = Matrix.all
  end

  # GET /matrices/1 or /matrices/1.json
  def show
  end

  # GET /matrices/new
  def new
    @matrix = Matrix.new
  end

  # GET /matrices/1/edit
  def edit
  end

  # POST /matrices or /matrices.json
  def create
    @matrix = Matrix.new(matrix_params)

    respond_to do |format|
      if @matrix.save
        format.html { redirect_to matrix_url(@matrix), notice: "Matrix was successfully created." }
        format.json { render :show, status: :created, location: @matrix }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @matrix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matrices/1 or /matrices/1.json
  def update
    respond_to do |format|
      if @matrix.update(matrix_params)
        format.html { redirect_to matrix_url(@matrix), notice: "Matrix was successfully updated." }
        format.json { render :show, status: :ok, location: @matrix }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @matrix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrices/1 or /matrices/1.json
  def destroy
    @matrix.destroy

    respond_to do |format|
      format.html { redirect_to matrices_url, notice: "Matrix was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matrix
      @matrix = Matrix.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def matrix_params
      params.require(:matrix).permit(:nombre, :numserie, :uso, :marca, :published_at, :created_by, :updated_by, :Tag, :tag, :descripcion, :encasa, :FechaAlta, :Carpinteria)
    end
end
