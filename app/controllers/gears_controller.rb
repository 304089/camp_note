class GearsController < ApplicationController
  before_action :set_gear, except:[:new, :create, :index]

  def new
    @gear = Gear.new
  end

  def create
    @gear = Gear.new(gear_params)
    @gear.user_id = current_user.id
    @gear.save
    redirect_to gears_path
  end

  def show
  end

  def index
    @gears = Gear.all.includes(:user)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def gear_params
    params.require(:gear).permit(:name, :introduction, :amount, :genre, :gear_image)
  end

  def set_gear
    @gear = Gear.find(params[:id])
  end

end
