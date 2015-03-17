class ProfilesController < ApplicationController
  def index
    if !params[:search].blank?
      @profiles = Profile.where("name LIKE ?", "%#{params[:search]}%")
    else
      @profiles = Profile.all
    end
    respond_to do |format|
      format.js
      format.html
    end
  end

  def new
    @profile = Profile.new
    respond_to do |format|
      format.js
    end    
  end

  def create
    @profile = Profile.create profile_params
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @profile = Profile.find params[:id]
    @profile.destroy
    respond_to do |format|
      format.js { render nothing: true }
    end
  end


private
  def profile_params
    params.require(:profile).permit(
      :firstName, 
      :lastName, 
      :birthDate, 
      :status, 
      :address1, 
      :address2, 
      :city, 
      :state, 
      :zip, 
      :Cell, 
      :Home, 
      :avatar
    )
  end  
end