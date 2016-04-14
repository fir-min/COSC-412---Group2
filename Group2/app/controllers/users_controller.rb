class UsersController < ApplicationController

    def destroy
      user = User.find(params[:id]).destroy
      redirect_to  "/user_config/removeUserType"
    end
end