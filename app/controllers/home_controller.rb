class HomeController < ApplicationController
  def index
    @riffblob = Riffblob.new
    @riffblobs = Riffblob.all
  end

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
end
