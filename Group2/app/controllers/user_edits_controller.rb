class UserEditsController < ApplicationController



  def search

    @num = params[:name]

    redirect_to '/user_config/addUserType'
  end

  def destroy
    user = User.find(params[:id]).destroy
    redirect_to  "/user_config/removeUserType"
  end

  def editIt
    user = params[:userEmail]
    user_password = params[:userPassword]
    user_type = params[:userType]
    admin = User.new(:email => user, :password => 'password', :password_confirmation => 'password')
    admin.save
    redirect_to "/user_config/index_user_config"
  end

  def addIt

    email = params[:userEmail]
    pass = params[:userPassword]
    passConfirm = params[:userPassCon]

    if email && pass != nil && passConfirm != nil



      if pass == passConfirm


        if User.find_by_email(email) ==nil
          @clients = 'New User Created'
          user = User.new(:email => email, :password => pass, :password_confirmation => passConfirm)
          user.save
        else
          @clients = 'The user already exists'
        end

      else
        @clients = 'Your Passwords did not match.'
      end
=begin
      @num = User.count
User.create(:email => 'teddy2fast@gmail.com', :encrypted_password => "password", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 1, :current_sign_in_at => "2016-04-01 18:44:39", :last_sign_in_at => "2016-04-01 18:44:39", :current_sign_in_ip => "::1", :last_sign_in_ip => "::1", :created_at => "2016-04-01 18:43:53", :updated_at => "2016-04-01 18:44:39")

      @user = User.all.new
      @user.email = 'David'
      @user.save

=end
    else
      @clients = "no it is not ted it is "
    end
    redirect_to "/user_config/index_user_config"
  end


  def deleteIt
    user = User.find_by_email(params[:userEmail]).destroy
    redirect_to "/user_config/index_user_config"
  end
end