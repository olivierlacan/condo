class SyndicsController < ApplicationController
  def show
    @syndic = Syndic.find(params[:id])
  end
end
