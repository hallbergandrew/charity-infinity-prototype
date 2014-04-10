class DashboardController < ApplicationController
  def show
    @user = current_user
    if @user.profile != nil
      @profile = Profile.find(@user.profile.id)
    else
      @profile = Profile.create({:user_id => @user.id})
      @profile = Profile.find(@user.profile.id)
    end
  end
end
