class HomeController < ApplicationController
  def index
    @riff_photo = RiffPhoto.new
    @riff_photos = RiffPhoto.all
  end

    def create
    @riff_photo = RiffPhoto.new(riff_photo_params)

    respond_to do |format|
      if @riff_photo.save
        format.html { redirect_to @riff_photo, notice: 'Riff photo was successfully created.' }
        format.json { render :show, status: :created, location: @riff_photo }
      else
        format.html { render :new }
        format.json { render json: @riff_photo.errors, status: :unprocessable_entity }
      end
    end
  end
end
