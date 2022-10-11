class InventorisController < ApplicationController
  before_action :set_inventori, only: %i[show edit update destroy]

  # GET /inventoris or /inventoris.json
  def index
    @inventoris = current_user.inventoris
  end

  # GET /inventoris/1 or /inventoris/1.json
  def show; end

  # GET /inventoris/new
  def new
    @inventori = Inventori.new
  end

  # GET /inventoris/1/edit
  def edit; end

  # POST /inventoris or /inventoris.json
  def create
    @user = current_user
    @inventori = Inventori.new(inventori_params)
    @inventori.user = @user

    respond_to do |format|
      if @inventori.save
        format.html { redirect_to inventori_url(@inventori), notice: 'Inventori was successfully created.' }
        format.json { render :show, status: :created, location: @inventori }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inventori.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventoris/1 or /inventoris/1.json
  def update
    respond_to do |format|
      if @inventori.update(inventori_params)
        format.html { redirect_to inventori_url(@inventori), notice: 'Inventori was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventori }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inventori.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventoris/1 or /inventoris/1.json
  def destroy
    @inventori.destroy

    respond_to do |format|
      format.html { redirect_to inventoris_url, notice: 'Inventori was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_inventori
    @inventori = Inventori.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def inventori_params
    params.require(:inventori).permit(:name, :description)
  end
end
