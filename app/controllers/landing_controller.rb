class LandingController < ApplicationController
  def index
    @activities = Activity.all
    @events = Event.all.order(:date)
  end
end
