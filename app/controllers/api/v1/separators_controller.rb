module Api
  module V1
    class SeparatorsController < ApplicationController
      def index
        respond_to do |format|
          format.json { render json: Separator.all }
          format.html
        end
      end

      def show
        respond_to do |format|
          format.json { render json: Separator.find(params[:id]) }
          format.html
        end
      end
    end
  end
end
