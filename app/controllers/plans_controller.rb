class PlansController < ApplicationController
  before_action :set_user, except:[:new, :create, :index]

  def new
  end

  def create
  end

  def show
  end

  def index
    @plans = Plan.where(user_id: current_user.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def plan_params
    parmas.require(:plan).permit(:title, :departure_date, :return_date, :place, :check_in_time, :check_out_time, :memo, :member)
  end

  def set_plan
    @plan = Plan.find(params[:id])
  end

  
end
