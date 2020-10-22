class CommecialUnitsController < ApplicationController
  before_action :set_commecial_unit, only: [:show, :edit, :update, :destroy]

  # GET /commecial_units
  # GET /commecial_units.json
  def index
    @commecial_units = CommecialUnit.all
  end

  # GET /commecial_units/1
  # GET /commecial_units/1.json
  def show
  end

  # GET /commecial_units/new
  def new
    @commecial_unit = CommecialUnit.new
  end

  # GET /commecial_units/1/edit
  def edit
  end

  # POST /commecial_units
  # POST /commecial_units.json
  def create
    @commecial_unit = CommecialUnit.new(commecial_unit_params)

    respond_to do |format|
      if @commecial_unit.save
        format.html { redirect_to @commecial_unit, notice: 'Commecial unit was successfully created.' }
        format.json { render :show, status: :created, location: @commecial_unit }
      else
        format.html { render :new }
        format.json { render json: @commecial_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commecial_units/1
  # PATCH/PUT /commecial_units/1.json
  def update
    respond_to do |format|
      if @commecial_unit.update(commecial_unit_params)
        format.html { redirect_to @commecial_unit, notice: 'Commecial unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @commecial_unit }
      else
        format.html { render :edit }
        format.json { render json: @commecial_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commecial_units/1
  # DELETE /commecial_units/1.json
  def destroy
    @commecial_unit.destroy
    respond_to do |format|
      format.html { redirect_to commecial_units_url, notice: 'Commecial unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commecial_unit
      @commecial_unit = CommecialUnit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commecial_unit_params
      params.require(:commecial_unit).permit(:owner, :address, :shops, :sqmt, :parking, :price, :picture)
    end
end
