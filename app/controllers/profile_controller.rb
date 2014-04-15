class ProfileController < ApplicationController
  before_filter :find_profile
  def show
  end

  def edit
  end

  def update
    @profile.update(params_profile)
    respond_to do |format|
      format.html { redirect_to profile_path }
      format.js
    end
  end

  private

  def find_profile
    @profile = Profile.find(params[:id])
  end

  def params_profile
    params.require(:profile).permit(:name, :street, :city, :state, :zip, :phone)
  end
end
