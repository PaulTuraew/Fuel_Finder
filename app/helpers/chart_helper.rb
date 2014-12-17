#No longer needed now that data is in db
# module ChartHelper
#   FUEL_TYPES = {
#     "BD"   => "Biodiesel (B20 and above)",
#     "CNG"  => "Compressed Natural Gas",
#     "E85"  => "Ethanol (E85)",
#     "ELEC" => "Electric",
#     "HY"   => "Hydrogen",
#     "LNG"  => "Liquefied Natural Gas",
#     "LPG"  => "Liquefied Petroleum Gas (Propane)",
#   }

# No longer needed now that data is in db
# accessed in index.html.erb (views) for the dropdown menu http://stackoverflow.com/questions/6400010/rails-select-drop-down-for-states
  # def us_states
  #   [
  #     ['Alabama', 'AL'],
  #     ['Alaska', 'AK'],
  #     ['Arizona', 'AZ'],
  #     ['Arkansas', 'AR'],
  #     ['California', 'CA'],
  #     ['Colorado', 'CO'],
  #     ['Connecticut', 'CT'],
  #     ['Delaware', 'DE'],
  #     ['District of Columbia', 'DC'],
  #     ['Florida', 'FL'],
  #     ['Georgia', 'GA'],
  #     ['Hawaii', 'HI'],
  #     ['Idaho', 'ID'],
  #     ['Illinois', 'IL'],
  #     ['Indiana', 'IN'],
  #     ['Iowa', 'IA'],
  #     ['Kansas', 'KS'],
  #     ['Kentucky', 'KY'],
  #     ['Louisiana', 'LA'],
  #     ['Maine', 'ME'],
  #     ['Maryland', 'MD'],
  #     ['Massachusetts', 'MA'],
  #     ['Michigan', 'MI'],
  #     ['Minnesota', 'MN'],
  #     ['Mississippi', 'MS'],
  #     ['Missouri', 'MO'],
  #     ['Montana', 'MT'],
  #     ['Nebraska', 'NE'],
  #     ['Nevada', 'NV'],
  #     ['New Hampshire', 'NH'],
  #     ['New Jersey', 'NJ'],
  #     ['New Mexico', 'NM'],
  #     ['New York', 'NY'],
  #     ['North Carolina', 'NC'],
  #     ['North Dakota', 'ND'],
  #     ['Ohio', 'OH'],
  #     ['Oklahoma', 'OK'],
  #     ['Oregon', 'OR'],
  #     ['Pennsylvania', 'PA'],
  #     ['Puerto Rico', 'PR'],
  #     ['Rhode Island', 'RI'],
  #     ['South Carolina', 'SC'],
  #     ['South Dakota', 'SD'],
  #     ['Tennessee', 'TN'],
  #     ['Texas', 'TX'],
  #     ['Utah', 'UT'],
  #     ['Vermont', 'VT'],
  #     ['Virginia', 'VA'],
  #     ['Washington', 'WA'],
  #     ['West Virginia', 'WV'],
  #     ['Wisconsin', 'WI'],
  #     ['Wyoming', 'WY']
  #   ]
  # end

  def get_fuel_type_desc(abbr)
    FUEL_TYPES[abbr]
  end

end
