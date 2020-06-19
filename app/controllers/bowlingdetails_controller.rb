class BowlingdetailsController < ApplicationController
  before_action :set_bowlingdetail, only: [:show, :edit, :update, :destroy]

  # GET /bowlingdetails
  # GET /bowlingdetails.json
  def index
    @bowlingdetails = Bowlingdetail.all
  end

  # GET /bowlingdetails/1
  # GET /bowlingdetails/1.json
  def show
  end

  # GET /bowlingdetails/new
  def new
    @bowlingdetail = Bowlingdetail.new
  end

  # GET /bowlingdetails/1/edit
  def edit
  end

  # POST /bowlingdetails
  # POST /bowlingdetails.json
  def create
    @bowlingdetail = Bowlingdetail.new(bowlingdetail_params)

    respond_to do |format|
      if @bowlingdetail.save
        format.html { redirect_to @bowlingdetail, notice: 'Bowlingdetail was successfully created.' }
        format.json { render :show, status: :created, location: @bowlingdetail }
      else
        format.html { render :new }
        format.json { render json: @bowlingdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bowlingdetails/1
  # PATCH/PUT /bowlingdetails/1.json
  def update
    respond_to do |format|
      if @bowlingdetail.update(bowlingdetail_params)
        format.html { redirect_to @bowlingdetail, notice: 'Bowlingdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @bowlingdetail }
      else
        format.html { render :edit }
        format.json { render json: @bowlingdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bowlingdetails/1
  # DELETE /bowlingdetails/1.json
  def destroy
    @bowlingdetail.destroy
    respond_to do |format|
      format.html { redirect_to bowlingdetails_url, notice: 'Bowlingdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bowlingdetail
      @bowlingdetail = Bowlingdetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bowlingdetail_params
      params.require(:bowlingdetail).permit(:bowling_team, :overs, :runs, :wickets, :wides, :no_balls, :inning_id)
    end
end
