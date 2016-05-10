class AuditController < ApplicationController
  before_filter :authenticate_user!
  def request_doc
    @purch = Purchase.all

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

  end


  def correct
  end


  def note
      if params[:noteText] == nil
        @temp = "Values were empty";
      else
        @temp = params[:noteText];

        #within this case save the variable @temp within a model with the timestamp
      end
  end

  def audit

  end

  def show

  end

  def index

  end
end

