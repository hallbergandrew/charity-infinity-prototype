class UsersController < ApplicationController

def edit
  @user = User.find(params[:id])
  @profile = Profile.find(params[:id])
end

def update
  @user = User.find(params[:id])
  if @user.update(user_params)
    redirect_to dashboard_path
  else
    render 'edit'
  end
end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
  params.require(:user).permit(:photo)
end

end
