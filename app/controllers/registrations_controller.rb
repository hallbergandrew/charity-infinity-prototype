class RegistrationsController < Devise::RegistrationsController  
  def update
    super
    respond_to do |format|
      format.html { redirect_to profile_path(@profile) }
      format.js
      return
    end
  end
end