class RiffblobsController < ApplicationController
  before_action :set_riffblob, only: [:show, :edit, :update, :destroy]

  # GET /riffblobs
  # GET /riffblobs.json
  def index
    @riffblobs = current_user.riffblobs
    respond_to do |format|
      format.html
      format.json { render json: @riffblobs.as_json }
    end
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
    p '*'*100
    # p riffblob_params
    # params[:riffblob] = { file: params[:file], shoutout: params[:shoutout], pointer: params[:pointer] }
    # params[:riffblob] = { file: params[:file], shoutout: params[:fullname]}
    # p params
    @user = current_user
    @riffblob = @user.riffblobs.new(riffblob_params)
    if @riffblob.save
      @riffblob.url = @riffblob.file
      @riffblob.save
    else
      format.json { render json: @riffblob.errors, status: :unprocessable_entity }
    end

    # respond_to do |format|
    #   format.json
    # end
  end

  # DELETE /riffblobs/1
  # DELETE /riffblobs/1.json
  def destroy
    @riffblob.destroy
    respond_to do |format|
      format.html { render notice: 'Riffblob was successfully destroyed.' }
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
      params.require(:riffblob).permit(:user_id, :file, :shoutout, :url, :pointer)
    end
end
