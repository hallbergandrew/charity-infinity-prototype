class RegistrationsController < Devise::RegistrationsController  
  def edit
  	@user = current_user
    @profile = Profile.find(@user.id)
    super
  end
end