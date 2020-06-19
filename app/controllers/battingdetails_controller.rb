class BattingdetailsController < ApplicationController
  before_action :set_battingdetail, only: [:show, :edit, :update, :destroy]

  # GET /battingdetails
  # GET /battingdetails.json
  def index
    @battingdetails = Battingdetail.all
  end

  # GET /battingdetails/1
  # GET /battingdetails/1.json
  def show
  end

  # GET /battingdetails/new
  def new
    @battingdetail = Battingdetail.new
  end

  # GET /battingdetails/1/edit
  def edit
  end

  # POST /battingdetails
  # POST /battingdetails.json
  def create
    @battingdetail = Battingdetail.new(battingdetail_params)

    respond_to do |format|
      if @battingdetail.save
        format.html { redirect_to @battingdetail, notice: 'Battingdetail was successfully created.' }
        format.json { render :show, status: :created, location: @battingdetail }
      else
        format.html { render :new }
        format.json { render json: @battingdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /battingdetails/1
  # PATCH/PUT /battingdetails/1.json
  def update
    respond_to do |format|
      if @battingdetail.update(battingdetail_params)
        format.html { redirect_to @battingdetail, notice: 'Battingdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @battingdetail }
      else
        format.html { render :edit }
        format.json { render json: @battingdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /battingdetails/1
  # DELETE /battingdetails/1.json
  def destroy
    @battingdetail.destroy
    respond_to do |format|
      format.html { redirect_to battingdetails_url, notice: 'Battingdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_battingdetail
      @battingdetail = Battingdetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def battingdetail_params
      params.require(:battingdetail).permit(:batting_team, :overs, :runs, :wickets, :byes, :leg_byes, :inning_id)
    end
end
