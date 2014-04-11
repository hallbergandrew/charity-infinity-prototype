class DashboardController < ApplicationController
  def show
    @user = current_user
    @profile = Profile.find_by(user_id: @user.id)
    if @profile != nil
      @profile = Profile.find(@profile.user.id)
    else
      @profile = Profile.create({:user_id => @user.id})
      @profile = Profile.find_by(user_id: @profile.user.id)
    end
  end
end
