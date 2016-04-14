class UsersController < ApplicationController

    def destroy
      user = User.find(params[:id]).destroy
      redirect_to  "/user_config/removeUserType"
    end

  def search
    @num = params[:name]

    redirect_to '/user_config/addUserType'
  end
  def edit

  end
end