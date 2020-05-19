class SearchController < ApplicationController

  def index
    conn = Faraday.new(url: 'https://www.potterapi.com/v1/') do |faraday|
      faraday.params[:key] = ENV['POTTER_API_KEY']
      faraday.params[:house] = params[:house]
      faraday.params[:orderOfThePhoenix] = true
    end
    search = conn.get("characters")
    json = JSON.parse(search.body, symbolize_names: true)
    @characters = json
    @house = params[:house]
  end

end
