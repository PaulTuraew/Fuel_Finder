namespace :chart do
  desc "Get fuel station counts from NREL and store in database"
  task get_fuel_stations: :environment do

    hostname  = "http://developer.nrel.gov"
    api_key   = "oyz3TmTuOLaY0QS8hpBNk32s4nyocBlVasRABgbN"
    limit     = 1
    data_type = "alt-fuel-stations"

#iterate through each state from the API and store in db
    State.all.each do |state|
    # state = State.first
      puts "Retrieving data for #{state.desc}"

      state_abbr = state.abbr
      uri = URI("#{hostname}/api/#{data_type}/v1.json?api_key=#{api_key}&state=#{state_abbr}&limit=#{limit}")
      res = Net::HTTP.get(uri)
      json = JSON.parse(res)

      s_count = json['station_counts']['total']

      json['station_counts']['fuels'].each do |key, value|
        fuel_type = FuelType.where(abbr: key).first

        # get total key from hash
        count = value['total']
        # calculate percentage as float
        percent = count / s_count.to_f * 100

        # store in database
        station_count = StationCount.find_or_initialize_by(fuel_type_id: fuel_type.id, state_id: state.id)
        station_count.update(percent: percent)
      end
    end
  end
end
