class HomeController < ApplicationController
  def index
    @riffblob = Riffblob.new
    @riffblobs = Riffblob.all.sample(25)
    # respond_to do |format|
    #   format.json { render json: @riffblobs.as_json }
    # end
  end

  # def create   
  #   @riffblob = Riffblob.new(riffblob_params)    
    
  #   respond_to do |format|   
  #     if @riffblob.save    
  #       format.html { redirect_to @riffblob, notice: 'Riffblob was successfully created.' }    
  #       format.json { render :show, status: :created, location: @riffblob }    
  #     else   
  #       format.html { render :new }    
  #       format.json { render json: @riffblob.errors, status: :unprocessable_entity }   
  #     end    
  # end
end
