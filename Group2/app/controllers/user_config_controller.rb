class UserConfigController < ApplicationController
  helper_method :add_user
  def create

  end
  def add_user


    User.create(email: "teddy2fast@gmail.com",encrypted_password: "password")

  end


  def addUser
    @user = User.new
  end



  def editUser

  end


  def removeUser
    @user = User.new

  end

  def listUsers
    @user = User.new
  end

  def viewUsers
       @searchedTerm =  params[:searchterm]
       @user = User.new
    if params[:user][:email].present?
      @temp = User.find_by_email(params[:user][:email])
    end
    if  @temp != nil
      @pass = @temp.encrypted_password
      @temp.encrypted_password = password1
      @temp.save
      @pass2 = temp.encrypted_password
    end
  end


  def index_user_config

  end
end

