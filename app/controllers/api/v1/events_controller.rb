module Api
  module V1
    class EventsController < ApplicationController
      def index
        respond_to do |format|
          format.json do
            render json: Event.all.order(date: :desc)
                              .group_by { |m| m.date.beginning_of_month.strftime('%B %Y') }
          end
          format.html
        end
      end
    end
  end
end
