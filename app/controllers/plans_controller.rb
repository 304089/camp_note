class PlansController < ApplicationController
  def index
    @plans = Plan.all.includes(:user)
  end

  
end
