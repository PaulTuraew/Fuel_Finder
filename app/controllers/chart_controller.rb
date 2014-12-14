class ChartController < ApplicationController

  def index
  end

# passing a state and getting back a hash with the data
  def chart
    hostname = "http://developer.nrel.gov"
    api_key = "oyz3TmTuOLaY0QS8hpBNk32s4nyocBlVasRABgbN"
    state = "VA"
    limit = 10
    data_type = "alt-fuel-stations"

    uri = URI("#{hostname}/api/#{data_type}/v1.json?api_key=#{api_key}&state=#{state}&limit=#{limit}")

    puts params['state']
    data = {a: 1}
    respond_to do |format|
      format.json {render json: data}
    end
  end

end
