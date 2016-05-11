class AlertsController < ApplicationController
    def index 
    @alerts = Alert.all
  end
  def new 
    @alert = Alert.new
  end
  
  def create
    @alert= Alert.new(message_params)
    if @alert.save
      redirect_to '/alerts'
      else 
      render 'new'
    end 
  end 
  
   private 
  def message_params
    params.require(:alert).permit(:content)
  end 
end

