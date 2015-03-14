class RiffPhotosController < ApplicationController
  before_action :set_riff_photo, only: [:show, :edit, :update, :destroy]

  # GET /riff_photos
  # GET /riff_photos.json
  def index
    @riff_photos = RiffPhoto.all
  end

  # GET /riff_photos/1
  # GET /riff_photos/1.json
  def show
  end

  # GET /riff_photos/new
  def new
    @riff_photo = RiffPhoto.new
  end

  # GET /riff_photos/1/edit
  def edit
  end

# @http_method XHR POST
# @url /documents
def create
  @riff_photos = current_user.documents.create(params[:photo])
end

  # # POST /riff_photos
  # # POST /riff_photos.json
  # def create
  #   @riff_photo = RiffPhoto.new(riff_photo_params)

  #   respond_to do |format|
  #     if @riff_photo.save
  #       format.html { redirect_to @riff_photo, notice: 'Riff photo was successfully created.' }
  #       format.json { render :show, status: :created, location: @riff_photo }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @riff_photo.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /riff_photos/1
  # PATCH/PUT /riff_photos/1.json
  def update
    respond_to do |format|
      if @riff_photo.update(riff_photo_params)
        format.html { redirect_to @riff_photo, notice: 'Riff photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @riff_photo }
      else
        format.html { render :edit }
        format.json { render json: @riff_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riff_photos/1
  # DELETE /riff_photos/1.json
  def destroy
    @riff_photo.destroy
    respond_to do |format|
      format.html { redirect_to riff_photos_url, notice: 'Riff photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_riff_photo
      @riff_photo = RiffPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def riff_photo_params
      params.require(:riff_photo).permit(:photo_name, :owner, :shoutout)
    end
end
