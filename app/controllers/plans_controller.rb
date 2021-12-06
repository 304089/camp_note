class PlansController < ApplicationController
  before_action :set_plan, except:[:new, :gear_choice, :create, :index]

  def new
    @plan = Plan.new
  end

  def gear_choice
    @plan = Plan.new(plan_params)
    @plan.user_id = current_user.id
    @plan.plan_gears.build
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
    params.require(:plan).permit(:title, :departure_date, :return_date, :place, :check_in_time, :check_out_time, :memo, :member)
  end

  def set_plan
    @plan = Plan.find(params[:id])
  end

  
end
