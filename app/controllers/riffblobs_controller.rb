class RiffblobsController < ApplicationController
  before_action :set_riffblob, only: [:show, :edit, :update, :destroy]

  # GET /riffblobs
  # GET /riffblobs.json
  def index
    @riffblobs = Riffblob.all
  end

  # GET /riffblobs/1
  # GET /riffblobs/1.json
  def show
  end

  # GET /riffblobs/new
  def new
    @riffblob = Riffblob.new
  end

  # GET /riffblobs/1/edit
  def edit
  end

# @http_method XHR POST
# @url /documents
# def create
#   @riffblobs = riffblob.create
# end

  # # POST /riffblobs
  # # POST /riffblobs.json
  def create
    @riffblob = Riffblob.new(riffblob_params)

    respond_to do |format|
      if @riffblob.save
        format.html { redirect_to @riffblob, notice: 'Riff photo was successfully created.' }
        format.json { render :show, status: :created, location: @riffblob }
      else
        format.html { render :new }
        format.json { render json: @riffblob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /riffblobs/1
  # PATCH/PUT /riffblobs/1.json
  def update
    respond_to do |format|
      if @riffblob.update(riffblob_params)
        format.html { redirect_to @riffblob, notice: 'Riff photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @riffblob }
      else
        format.html { render :edit }
        format.json { render json: @riffblob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riffblobs/1
  # DELETE /riffblobs/1.json
  def destroy
    @riffblob.destroy
    respond_to do |format|
      format.html { redirect_to riffblobs_url, notice: 'Riff photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_riffblob
      @riffblob = Riffblob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def riffblob_params
      params.require(:riffblob).permit(:photo_name, :owner, :image, :shoutout)
    end
end
