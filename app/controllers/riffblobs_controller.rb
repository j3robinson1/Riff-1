class RiffblobsController < ApplicationController
  before_action :set_riffblob, only: [:show, :edit, :update, :destroy]

  # GET /riffblobs
  # GET /riffblobs.json
  def index
    @riffblobs = Riffblob.all.map{|rb| {file: rb.file} }
    respond_to do |format|
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
    params[:riffblob] = { file: params[:file], shoutout: params[:fullname]}
    p params
    @riffblob = Riffblob.new(riffblob_params)

    respond_to do |format|
      if @riffblob.save
        format.json
      else
        format.html { render :nothing => true }
        format.json { render json: @riffblob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /riffblobs/1
  # PATCH/PUT /riffblobs/1.json
  def update
    params[:riffblob] = { url: params[:url]}
    respond_to do |format|
      if @riffblob.update(riffblob_params)
        format.html { notice: 'Riffblob was successfully updated.' }
        format.json { render :nothing => true, status: :ok, location: @riffblob }
      else
        format.html { render :nothing => true }
        format.json { render json: @riffblob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riffblobs/1
  # DELETE /riffblobs/1.json
  def destroy
    @riffblob.destroy
    respond_to do |format|
      format.html { notice: 'Riffblob was successfully destroyed.' }
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
      params.require(:riffblob).permit(:user_id, :file, :shoutout, :url)
    end
end
