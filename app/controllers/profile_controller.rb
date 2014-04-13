class ProfileController < ApplicationController

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(params_profile)
      flash[:notice] = "Profile updated."
      redirect_to dashboard_path
    else
      render 'edit'
    end
  end

  private

  def params_profile
    params.require(:profile).permit(:name, :street, :city, :state, :zip, :phone)
  end
end
