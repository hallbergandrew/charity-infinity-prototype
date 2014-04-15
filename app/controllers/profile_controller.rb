class ProfileController < ApplicationController

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(params_profile)
    respond_to do |format|
      format.html { redirect_to profile_path }
      format.js
    end
  end

  private

  def params_profile
    params.require(:profile).permit(:name, :street, :city, :state, :zip, :phone)
  end
end
