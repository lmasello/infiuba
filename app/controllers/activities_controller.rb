class ActivitiesController < ApplicationController
  def index
    respond_to do |format|
      format.json { render json: Activity.all }
      format.html
    end
  end
end
