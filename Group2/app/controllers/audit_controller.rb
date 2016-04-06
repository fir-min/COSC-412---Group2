class AuditController < ApplicationController
  before_filter :authenticate_user! 
  def audit
  end
end
