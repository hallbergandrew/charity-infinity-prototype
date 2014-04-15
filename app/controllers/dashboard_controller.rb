class DashboardController < ApplicationController
  def show
    @profile = Profile.find(current_user.id)
    if @profile != nil
      @profile = Profile.find(@profile.user.id)
    else
      @profile = Profile.create({:user_id => current_user.id})
      @profile = Profile.find_by(user_id: @profile.user.id)
    end
  end
end
