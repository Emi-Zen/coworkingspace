class MonumentsController < ApplicationController
  before_action :set_monument, only: %i[show edit update destroy]

  # GET /monuments or /monuments.json
  def index
    @monuments = Monument.all
    @monument = Monument.new
  end

  # GET /monuments/1 or /monuments/1.json
  def show
  end

  # GET /monuments/new
  def new
    @monument = Monument.new
  end

  # GET /monuments/1/edit
  def edit
  end

  # POST /monuments or /monuments.json
  def create
    @monument = Monument.new(monument_params)

    respond_to do |format|
      if @monument.save
        format.html { redirect_to @monument, notice: "Monument was successfully created." }
        format.json { render :show, status: :created, location: @monument }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render :show, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monuments/1 or /monuments/1.json
  def update
    respond_to do |format|
      if @monument.update(monument_params)
        format.html { redirect_to @monument, notice: "Monument was successfully updated." }
        format.json { render :show, status: :ok, location: @monument }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @monument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monuments/1 or /monuments/1.json
  def destroy
    @monument.destroy!

    respond_to do |format|
      format.html { redirect_to monuments_path, status: :see_other, notice: "Monument was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_monument
    @monument = Monument.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def monument_params
    params.require(:monument).permit(:name, :address, :opening_date)
  end
end
