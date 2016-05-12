class AuditController < ApplicationController
  before_filter :authenticate_user!
  def request_doc

    @purchasesTemp = Purchase.all
    @temp3 = AccessAudit.find_by_email(current_user.email)
    if params[:deptNo] == 0

      @temp = "Values were empty";
      @temp1 = "Values were empty";
      @temp2 = "Values were empty";



    else
      if params[:deptNo] !=nil
        @temp = params[:purchases][:start];
        @temp1 = params[:purchases][:end];
        @temp2 = params[:deptNo];

        # use this for searching for specific models that fit within this range.
        # This can be copied and paster
      else

        @temp = "Values were empty";
        @temp1 = "Values were empty";
        @temp2 = params[:deptNo];
      end


      #within this case save the variable @temp within a model with the timestamp
    end


   if params[:requestPermission]
     if AccessAudit.find_by_email(current_user.email).blank?
       access = AccessAudit.new(:email => current_user.email, :access => false, :message => params[:requestPermission] );
       access.save
     elsif AccessAudit.find_by_email(current_user.email)
       access = AccessAudit.find_by_email(current_user.email)
       access.message = params[:requestPermission];
       access.access = false
       access.save
     end

   end
  end
  
  


  def note
      
        @temp = params[:noteText];

        #within this case save the variable @temp within a model with the timestamp
  end

  def new

  end


end

