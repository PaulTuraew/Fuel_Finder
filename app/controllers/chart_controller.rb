class ChartController < ApplicationController
  #include ChartHelper
  def index
  end

  def chart_from_database
    abbr = params[:state]
    state = State.where(abbr: abbr)

    # loading models from foreign key
    station_counts = StationCount.where(state: state).includes([:state, :fuel_type])

    # create empty data array
    data = []

    # populate data array from database using linked FuelType
    station_counts.each do |station_count|
      data << [station_count.fuel_type.desc, station_count.percent.to_f]
    end

    # return data array as JSON
    respond_to do |format|
      format.json {render json: data} #this is data returned to user
    end
  end

#no longer needed to make calls to API each time
  # def chart_from_station_counts
  #   hostname  = "http://developer.nrel.gov"
  #   api_key   = "oyz3TmTuOLaY0QS8hpBNk32s4nyocBlVasRABgbN"
  #   state     = params[:state]
  #   limit     = 1
  #   data_type = "alt-fuel-stations"

  #   #abstracting out the URI, res encodes string to URI (decrease errors), grab data from URI and parse what is returned into a hash
  #   uri = URI("#{hostname}/api/#{data_type}/v1.json?api_key=#{api_key}&state=#{state}&limit=#{limit}")
  #   res = Net::HTTP.get(uri)
  #   json = JSON.parse(res)

  #   # create empty data array
  #   data = []

  #   # get total station count from json
  #   station_count = json['station_counts']['total']

  #   # iterate through each station count and get percentage of total stations
  #   json['station_counts']['fuels'].each do |key, value|
  #     fuel_type = key
  #     # get total key from hash
  #     count = value['total']
  #     # calculate percentage as float
  #     percent = count / station_count.to_f * 100
  #     # store in data array
  #     data << [get_fuel_type_desc(fuel_type), percent]
  #   end

  #   # return array as json
  #   respond_to do |format|
  #     format.json {render json: data} #this is data returned to user
  #   end
  # end

  # method used to make data calls directly from API - hitting the fuel_stations key and calculating %
  # passing a state and getting back a hash with the data
  # def chart_from_stations
  #   hostname  = "http://developer.nrel.gov"
  #   api_key   = "oyz3TmTuOLaY0QS8hpBNk32s4nyocBlVasRABgbN"
  #   state     = params[:state]
  #   limit     = 10
  #   data_type = "alt-fuel-stations"

  #   #abstracting out the URI, res encodes string to URI (decrease errors), grab data from URI and parse what is returned into a hash
  #   uri = URI("#{hostname}/api/#{data_type}/v1.json?api_key=#{api_key}&state=#{state}&limit=#{limit}")
  #   res = Net::HTTP.get(uri)
  #   json = JSON.parse(res)

  #   # create empty stations hash
  #   stations = {}

  #   # populate stations hash with id and fuel type code
  #   json['fuel_stations'].each do |data|
  #     id = data['id']
  #     code = data['fuel_type_code']
  #     stations[id] = code
  #   end

  #   # group stations by fuel type code
  #   grouped = stations.group_by { |key, value| value }

  #   # massage data to fit expected highcharts format
  #   # array of arrays, ex:
  #   # [["name", percent], ["name", percent], ["name", percent]]
  #   data = []
  #   grouped.each do |key, value|
  #     percent = value.count / grouped.count.to_f * 100
  #     data << [key, percent]
  #   end

  #   # return array as json
  #   respond_to do |format|
  #     format.json {render json: data} #this is data returned to user
  #   end
  # end

end
