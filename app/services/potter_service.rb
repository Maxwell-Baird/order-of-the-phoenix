class PotterService

  def initialize(house)
    @house = house
  end

  def characters
    search = conn.get("characters")
    json = JSON.parse(search.body, symbolize_names: true)

  end

  def conn
    Faraday.new(url: 'https://www.potterapi.com/v1/') do |faraday|
      faraday.params[:key] = ENV['POTTER_API_KEY']
      faraday.params[:house] = @house
      faraday.params[:orderOfThePhoenix] = true
    end
  end

end
