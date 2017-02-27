module Api
  module V1
    class StatsController < ApplicationController
      def index
        respond_to do |format|
          format.json { render json: Stat.all }
          format.html
        end
      end
    end
  end
end
