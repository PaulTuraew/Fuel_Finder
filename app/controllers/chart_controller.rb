class ChartController < ApplicationController

  def index
  end

# passing a state and getting back a hash with the data
  def chart
    hostname  = "http://developer.nrel.gov"
    api_key   = "oyz3TmTuOLaY0QS8hpBNk32s4nyocBlVasRABgbN"
    state     = "VA"
    limit     = 10
    data_type = "alt-fuel-stations"

#abstracting out the URI, res encodes string to URI (decrease errors), grab data from URI and parse what is returned into a hash
    uri = URI("#{hostname}/api/#{data_type}/v1.json?api_key=#{api_key}&state=#{state}&limit=#{limit}")
    res = Net::HTTP.get(uri)
    json = JSON.parse(res)

stations = {}

json['fuel_stations'].each do |data|
  id = data['id']
  code = data['fuel_type_code']
  stations[id] = code
end

    puts params['state']
    data = {a: 1}
    respond_to do |format|
      format.json {render json: stations} #this is data returned to user
    end
  end

end
