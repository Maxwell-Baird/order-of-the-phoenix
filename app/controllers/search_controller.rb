class SearchController < ApplicationController

  def index
    service = PotterService.new(params[:house])
    @characters = service.characters
    @house = params[:house]
  end

end
