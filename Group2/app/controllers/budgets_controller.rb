class BudgetsController < ApplicationController
  before_filter :authenticate_user! 
  def overall
  end


  def new
      @budgets = BudgetManage.all
  end

  def index

  end
end
