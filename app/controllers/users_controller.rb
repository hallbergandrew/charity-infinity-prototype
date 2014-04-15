class UsersController < ApplicationController
def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  @user.update(user_params)
  respond_to do |format|
    format.html { redirect_to profile_path }
    format.js
  end
end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
  params.require(:user).permit(:photo)
end

end
