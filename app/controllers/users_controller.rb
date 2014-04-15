class UsersController < ApplicationController
  before_filter :find_user

  def edit
  end

  def update
    @user.update(user_params)
    respond_to do |format|
      format.html { redirect_to profile_path }
      format.js
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:photo)
  end

end
