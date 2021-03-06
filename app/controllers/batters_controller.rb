class BattersController < ApplicationController
  before_action :set_batter, only: [:show, :edit, :update, :destroy]

  # GET /batters
  # GET /batters.json
  def index
    @batters = Batter.all
  end

  # GET /batters/1
  # GET /batters/1.json
  def show
  end

  # GET /batters/new
  def new
    @batter = Batter.new
  end

  # GET /batters/1/edit
  def edit
  end

  # POST /batters
  # POST /batters.json
  def create
    @batter = Batter.new(batter_params)

    respond_to do |format|
      if @batter.save
        format.html { redirect_to @batter, notice: 'Batter was successfully created.' }
        format.json { render :show, status: :created, location: @batter }
      else
        format.html { render :new }
        format.json { render json: @batter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /batters/1
  # PATCH/PUT /batters/1.json
  def update
    respond_to do |format|
      if @batter.update(batter_params)
        format.html { redirect_to @batter, notice: 'Batter was successfully updated.' }
        format.json { render :show, status: :ok, location: @batter }
      else
        format.html { render :edit }
        format.json { render json: @batter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batters/1
  # DELETE /batters/1.json
  def destroy
    @batter.destroy
    respond_to do |format|
      format.html { redirect_to batters_url, notice: 'Batter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batter
      @batter = Batter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def batter_params
      params.require(:batter).permit(:name, :history, :balls_faced, :zero, :one, :two, :three, :four, :five, :six, :how_out, :bowler, :fielder, :runs, :battingdetail_id)
    end
end
