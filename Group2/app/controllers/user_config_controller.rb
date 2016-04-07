class UserConfigController < ApplicationController
  helper_method :add_user
  def create

  end
  def add_user


    User.create(email: "teddy2fast@gmail.com",encrypted_password: "password")

  end


  def addUser

    email = params[:user][:email]
    pass = params[:user][:password]
    passConfirm = params[:user][:passwordConfirm]

    if email.valid? && pass != nil && passConfirm != nil



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
  end

  def addUserType
    User.create(email: "teddy2fast@gmail.com",encrypted_password: "password",reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-04-01 18:44:39", last_sign_in_at: "2016-04-01 18:44:39", current_sign_in_ip: "::1", last_sign_in_ip: "::1", created_at: "2016-04-01 18:43:53", updated_at: "2016-04-01 18:44:39")
  end

  def editUser
  @user = User.new
  end

  def editUserType
  end

  def removeUser
  end

  def removeUserType
  end

  def viewUsers

  end
end

