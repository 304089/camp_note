class GearsController < ApplicationController
  def index
    @gears = Gear.all.includes(:user)
  end
end
