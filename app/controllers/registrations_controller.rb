class RegistrationsController < Devise::RegistrationsController  
  def edit
    @profile = Profile.find(current_user.id)
    super
  end

  def update
    super
    @profile = Profile.find(current_user.id)
    respond_to do |format|
      format.html { redirect_to profile_path(@profile) }
      format.js
      return
    end
  end
end