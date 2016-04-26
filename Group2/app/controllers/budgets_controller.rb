class BudgetsController < ApplicationController
  # before_filter :authenticate_user! add this line to all controllers that have views need to be logged in to access.
  def overall
  end


  def new
      @budgets = BudgetManage.all
  end

  def index

  end
end
