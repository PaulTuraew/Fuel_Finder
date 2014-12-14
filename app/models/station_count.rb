class StationCount < ActiveRecord::Base
  belongs_to :state
  belongs_to :fuel_type

  validates :state, uniqueness: {scope: :fuel_type}
end
