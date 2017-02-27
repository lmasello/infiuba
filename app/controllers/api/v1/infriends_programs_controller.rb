module Api
  module V1
    class InfriendsProgramsController < ApplicationController
      def index
        respond_to do |format|
          format.json { render json: InfriendsProgram.all }
          format.html
        end
      end

      def show
        respond_to do |format|
          format.json { render json: InfriendsProgram.find(params[:id]) }
          format.html
        end
      end
    end
  end
end
