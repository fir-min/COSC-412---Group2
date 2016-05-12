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

    @auditRequest = AccessAudit.all
    @temper = params[:truePermission]
    if params[:truePermission] && params[:auditor]
    @temp = AccessAudit.find_by_email(params[:auditor])
      @temp.access = params[:truePermission]
      @temp.save
    elsif params[:falsePermission] && params[:auditor]
      @temp = AccessAudit.find_by_email(params[:auditor])
      @temp.access = params[:falsePermission]
      @temp.save
    end
  end
end
