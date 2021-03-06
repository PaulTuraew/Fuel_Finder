# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FuelType.create([
  {abbr: "BD"  , desc: "Biodiesel (B20 and above)"},
  {abbr: "CNG" , desc: "Compressed Natural Gas"},
  {abbr: "E85" , desc: "Ethanol (E85)"},
  {abbr: "ELEC", desc: "Electric"},
  {abbr: "HY"  , desc: "Hydrogen"},
  {abbr: "LNG" , desc: "Liquefied Natural Gas"},
  {abbr: "LPG" , desc: "Propane"},
])

State.create([
  {desc: 'Alabama', abbr: 'AL'},
  {desc: 'Alaska', abbr: 'AK'},
  {desc: 'Arizona', abbr: 'AZ'},
  {desc: 'Arkansas', abbr: 'AR'},
  {desc: 'California', abbr: 'CA'},
  {desc: 'Colorado', abbr: 'CO'},
  {desc: 'Connecticut', abbr: 'CT'},
  {desc: 'Delaware', abbr: 'DE'},
  {desc: 'District of Columbia', abbr: 'DC'},
  {desc: 'Florida', abbr: 'FL'},
  {desc: 'Georgia', abbr: 'GA'},
  {desc: 'Hawaii', abbr: 'HI'},
  {desc: 'Idaho', abbr: 'ID'},
  {desc: 'Illinois', abbr: 'IL'},
  {desc: 'Indiana', abbr: 'IN'},
  {desc: 'Iowa', abbr: 'IA'},
  {desc: 'Kansas', abbr: 'KS'},
  {desc: 'Kentucky', abbr: 'KY'},
  {desc: 'Louisiana', abbr: 'LA'},
  {desc: 'Maine', abbr: 'ME'},
  {desc: 'Maryland', abbr: 'MD'},
  {desc: 'Massachusetts', abbr: 'MA'},
  {desc: 'Michigan', abbr: 'MI'},
  {desc: 'Minnesota', abbr: 'MN'},
  {desc: 'Mississippi', abbr: 'MS'},
  {desc: 'Missouri', abbr: 'MO'},
  {desc: 'Montana', abbr: 'MT'},
  {desc: 'Nebraska', abbr: 'NE'},
  {desc: 'Nevada', abbr: 'NV'},
  {desc: 'New Hampshire', abbr: 'NH'},
  {desc: 'New Jersey', abbr: 'NJ'},
  {desc: 'New Mexico', abbr: 'NM'},
  {desc: 'New York', abbr: 'NY'},
  {desc: 'North Carolina', abbr: 'NC'},
  {desc: 'North Dakota', abbr: 'ND'},
  {desc: 'Ohio', abbr: 'OH'},
  {desc: 'Oklahoma', abbr: 'OK'},
  {desc: 'Oregon', abbr: 'OR'},
  {desc: 'Pennsylvania', abbr: 'PA'},
  {desc: 'Puerto Rico', abbr: 'PR'},
  {desc: 'Rhode Island', abbr: 'RI'},
  {desc: 'South Carolina', abbr: 'SC'},
  {desc: 'South Dakota', abbr: 'SD'},
  {desc: 'Tennessee', abbr: 'TN'},
  {desc: 'Texas', abbr: 'TX'},
  {desc: 'Utah', abbr: 'UT'},
  {desc: 'Vermont', abbr: 'VT'},
  {desc: 'Virginia', abbr: 'VA'},
  {desc: 'Washington', abbr: 'WA'},
  {desc: 'West Virginia', abbr: 'WV'},
  {desc: 'Wisconsin', abbr: 'WI'},
  {desc: 'Wyoming', abbr: 'WY'},
])
