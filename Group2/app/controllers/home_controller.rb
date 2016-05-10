class HomeController < ApplicationController
  
  def index
    if signed_in?
      redirect_to action: 'signedin'

    end
   # sign_in_path = new_user_session
  end
  def signedin

    if signed_in? == false
      redirect_to action: 'index'

    else
      #user_type_id mapping
      #1 equals admin
      #2 equals manager
      #3 equals supervisor
      #4 equals agent
      #5 equals watcher
      #6 equals auditor

    end
  end
  def home
  end
end
